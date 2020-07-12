
CREATE proc [dbo].[sprInsertStockRegister]
(
	@intType int,
	@intChallanId int,
	@strPartyName varchar(100),
	@dteChallanDate datetime, 
	@strDetails varchar(1000),
	@intQuantity int,
	@strRemarks varchar(1000)
)
as
begin
	
	declare @balance bigint, @Id int

	set @Id = (select max([intId]) from [PerfectPoint].[dbo].[tblStockRegister] where [strDetails] = @strDetails and [ysnActive]=1)
	set @balance = (select [intBalance] from [PerfectPoint].[dbo].[tblStockRegister] where [intId] = @Id and [strDetails] = @strDetails and [ysnActive]=1)

	if(@intType = 1)  --------- Stock in
	begin

	INSERT INTO [PerfectPoint].[dbo].[tblStockRegister] ([intChallanId],[strPartyName],[dteChallanDate],[dteEntryDate],[strDetails],[intQuantity],[strRemarks],[ysnActive],[strAction],[intBalance])
	VALUES (@intChallanId,@strPartyName,@dteChallanDate,GETDATE(),@strDetails,@intQuantity,@strRemarks, 1,'IN', @balance + @intQuantity)

	end
	
	if(@intType = 2) ---------- Challan Out
	begin

	INSERT INTO [PerfectPoint].[dbo].[tblStockRegister] ([intChallanId],[strPartyName],[dteChallanDate],[dteEntryDate],[strDetails],[intQuantity],[strRemarks],[ysnActive],[strAction],[intBalance])
	VALUES (@intChallanId,@strPartyName,@dteChallanDate,GETDATE(),@strDetails,@intQuantity,@strRemarks, 1,'OUT', @balance - @intQuantity)

	INSERT INTO [PerfectPoint].[dbo].[tblBill] ([intChallanId],[strPartyName],[strDetails],[intQuantity],[monPrice],[monTotalPrice],[ysnPendingBill],[ysnActive])
	VALUES (@intChallanId,@strPartyName,@strDetails,@intQuantity, 0, 0, 1, 1)

	end

	if(@intType = 3)  --------- Production in
	begin

	INSERT INTO [PerfectPoint].[dbo].[tblStockRegister] ([intChallanId],[strPartyName],[dteChallanDate],[dteEntryDate],[strDetails],[intQuantity],[strRemarks],[ysnActive],[strAction],[intBalance],[ysnProduction])
	VALUES (2,'Production',@dteChallanDate,GETDATE(),@strDetails,@intQuantity,@strRemarks, 1,'IN', @balance + @intQuantity,1)

	end
	
	if(@intType = 4) ---------- Production Out
	begin

	INSERT INTO [PerfectPoint].[dbo].[tblStockRegister] ([intChallanId],[strPartyName],[dteChallanDate],[dteEntryDate],[strDetails],[intQuantity],[strRemarks],[ysnActive],[strAction],[intBalance],[ysnProduction])
	VALUES (2,'Production',@dteChallanDate,GETDATE(),@strDetails,@intQuantity,@strRemarks, 1,'OUT', @balance - @intQuantity,1)

	end

end