<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="ATA.tmp"?>
<Protocol Name="Short LC Message">
	<ATHeader>
		<PrimaryKeyField Name="Short LC" Size="1">0x0006</PrimaryKeyField>
	</ATHeader>
	<Comment></Comment>
	<PDU Name="Short LC: NULL Message" Size="8" SecondaryKeyField="6">
		<Comment></Comment>
		<Field Name="Time Slot 1 Activity ID" Pos="0" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="No Activity">0x0000<Comment></Comment></Value>
			<Value Description="Group CSBK">0x0002<Comment></Comment></Value>
			<Value Description="Individual CSBK">0x0003<Comment></Comment></Value>
			<Value Description="Group Voice">0x0008<Comment></Comment></Value>
			<Value Description="Individual Voice">0x0009<Comment></Comment></Value>
			<Value Description="Individual Data">0x000A<Comment></Comment></Value>
			<Value Description="Group Data">0x000B<Comment></Comment></Value>
			<Value Description="Emergency Group Voice">0x000C<Comment></Comment></Value>
			<Value Description="Emergency Individual Voice">0x000D<Comment></Comment></Value>
		</Field>
		<Field Name="Time Slot 2 Activity ID" Pos="0" Size="4" BitFlag="true" BitPos="1">
			<Comment></Comment>
			<Value Description="No Activity">0x0000<Comment></Comment></Value>
			<Value Description="Group CSBK">0x0002<Comment></Comment></Value>
			<Value Description="Individual CSBK">0x0003<Comment></Comment></Value>
			<Value Description="Group Voice">0x0008<Comment></Comment></Value>
			<Value Description="Individual Voice">0x0009<Comment></Comment></Value>
			<Value Description="Individual Data">0x000A<Comment></Comment></Value>
			<Value Description="Group Data">0x000B<Comment></Comment></Value>
			<Value Description="Emergency Group Voice">0x000C<Comment></Comment></Value>
			<Value Description="Emergency Individual Voice">0x000D<Comment></Comment></Value>
		</Field>
		<Field Name="Hashed ID Slot 1" Pos="1" Size="1" BitFlag="false">
			<Comment>(8 bits) identifies the active ID for timeslot 1 in a hashed format</Comment>
			<Data/>
		</Field>
		<Field Name="Hashed ID Slot 2" Pos="2" Size="1" BitFlag="false">
			<Comment>(8 bits) identifies the active ID for timeslot 2 in a hashed format</Comment>
			<Data/>
		</Field>
		<Field Name="Blank" Pos="3" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Short LCO" Pos="3" Size="4" BitFlag="true" BitPos="1">
			<Comment>(4 bits) identifies the message type</Comment>
			<Value Description="NULL Message">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Unused" Pos="4" Size="7" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Invalid Checksum" Pos="4" Size="1" BitFlag="true" BitPos="1">
			<Comment></Comment>
			<Value Description="Pass">0x0000<Comment></Comment></Value>
			<Value Description="Fail">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Pad" Pos="5" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="Short LC: NULL Message" Size="8" SecondaryKeyField="12">
	<PDU Name="Short LC: Activity Update" Size="8" SecondaryKeyField="12">
	<PDU Name="Short LC: Activity Update" Size="8" SecondaryKeyField="6">
		<Comment></Comment>
		<Field Name="Time Slot 2 Activity ID" Pos="0" Size="4" BitFlag="true" BitPos="7">
			<Comment></Comment>
			<Value Description="No Activity">0x0000<Comment></Comment></Value>
			<Value Description="Group CSBK">0x0002<Comment></Comment></Value>
			<Value Description="Individual CSBK">0x0003<Comment></Comment></Value>
			<Value Description="Group Voice">0x0008<Comment></Comment></Value>
			<Value Description="Individual Voice">0x0009<Comment></Comment></Value>
			<Value Description="Individual Data">0x000A<Comment></Comment></Value>
			<Value Description="Group Data">0x000B<Comment></Comment></Value>
			<Value Description="Emergency Group Voice">0x000C<Comment></Comment></Value>
			<Value Description="Emergency Individual Voice">0x000D<Comment></Comment></Value>
		</Field>
		<Field Name="Time Slot 1 Activity ID" Pos="0" Size="4" BitFlag="true" BitPos="11">
			<Comment></Comment>
			<Value Description="No Activity">0x0000<Comment></Comment></Value>
			<Value Description="Group CSBK">0x0002<Comment></Comment></Value>
			<Value Description="Individual CSBK">0x0003<Comment></Comment></Value>
			<Value Description="Group Voice">0x0008<Comment></Comment></Value>
			<Value Description="Individual Voice">0x0009<Comment></Comment></Value>
			<Value Description="Individual Data">0x000A<Comment></Comment></Value>
			<Value Description="Group Data">0x000B<Comment></Comment></Value>
			<Value Description="Emergency Group Voice">0x000C<Comment></Comment></Value>
			<Value Description="Emergency Individual Voice">0x000D<Comment></Comment></Value>
		</Field>
		<Field Name="Hashed ID Slot 1" Pos="1" Size="1" BitFlag="false">
			<Comment>(8 bits) identifies the active ID for timeslot 1 in a hashed format</Comment>
			<Data/>
		</Field>
		<Field Name="Hashed ID Slot 2" Pos="2" Size="1" BitFlag="false">
			<Comment>(8 bits) identifies the active ID for timeslot 2 in a hashed format</Comment>
			<Data/>
		</Field>
		<Field Name="Blank" Pos="3" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Short LCO" Pos="3" Size="4" BitFlag="true" BitPos="1">
			<Comment></Comment>
			<Value Description="Activity Update">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Unused" Pos="4" Size="7" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Invalid Checksum" Pos="4" Size="1" BitFlag="true" BitPos="1">
			<Comment>(4 bits) identifies the message type</Comment>
			<Value Description="Pass">0x0000<Comment></Comment></Value>
			<Value Description="Fail">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Pad" Pos="5" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="Short LC: Capacity Plus Generic CACH" Size="8" SecondaryKeyField="4,7">
</Protocol>