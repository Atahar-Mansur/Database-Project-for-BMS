
CREATE proc [dbo].[sprDeleteFromStockRegister]
(
	@intChallanId int,
	@strPartyName varchar(100),
	@strDetails varchar(1000),
	@intQuantity int
)
as
begin
	
	declare @currentChallanId int, @Id int

	set @Id = (select max([intId]) from [PerfectPoint].[dbo].[tblStockRegister] where [strDetails] = @strDetails and [ysnActive]=1)
	set @currentChallanId = (select [intChallanId] from [PerfectPoint].[dbo].[tblStockRegister] where [intId] = @Id and [strDetails] = @strDetails and [ysnActive]=1)

	if(@intChallanId = @currentChallanId)
	begin

	update [PerfectPoint].[dbo].[tblStockRegister]
	set [ysnActive] = 0
	where [intChallanId]=@intChallanId and [strPartyName]=@strPartyName and [strDetails] = @strDetails and [strAction] = 'OUT'

	end
	
	else
	begin

	update [PerfectPoint].[dbo].[tblStockRegister]
	set [ysnActive] = 0
	where [intChallanId]=@intChallanId and [strPartyName]=@strPartyName and [strDetails] = @strDetails and [strAction] = 'OUT'

	update [PerfectPoint].[dbo].[tblStockRegister]
	set [intBalance] = [intBalance] + @intQuantity
	where [intChallanId]=@currentChallanId and [strDetails] = @strDetails and [strAction] = 'OUT'

	end

	--Delete Bill Records

	update [PerfectPoint].[dbo].[tblBill]
	set [ysnActive] = 0
	where [intChallanId]=@intChallanId and [strDetails] = @strDetails

end