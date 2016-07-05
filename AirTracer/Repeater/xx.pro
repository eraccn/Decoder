<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="ATA.tmp"?>
<Protocol Name="RepeaterBurstMessage">
	<ATHeader>
		<PrimaryKeyField Name="RepeaterBurstMessage" Size="1">0x00f0</PrimaryKeyField>
	</ATHeader>
	<Comment></Comment>
	<PDU Name="Inb CSBK Wake Up" Size="44" SecondaryKeyField="3,8,20">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CSBKO - CSBK Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the BS Downlink Activation command, denoted as: %111000</Comment>
			<Value Description="BS_DWN_ACT">0x0038<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protect Flag" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="FID - Feature Set ID" Pos="11" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved" Pos="12" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="BS Address" Pos="14" Size="3" BitFlag="false">
			<Comment>This field defines the 24-bit base station identifier which uniquely defines a base station within a System.</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="17" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC Value" Pos="20" Size="2" BitFlag="false">
			<Comment>this is the CRC parity check. It provides error detection for the information of this CSBK</Comment>
			<Data/>
		</Field>
		<Field Name="Data1" Pos="22" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="23" Size="4" BitFlag="true", BitPos="0">
			<Comment></Comment>
			<Value/>
		</Field>
		<Field Name="Color Code" Pos="23" Size="4" BitFlag="true", BitPos="4">
			<Comment></Comment>
			<Value/>
		</Field>
		<Field Name="Data2" Pos="24" Size="19" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
</Protocol>