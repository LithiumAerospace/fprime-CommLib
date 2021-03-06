module SpaceWire {

  @ CCSDS sequence type enum
  enum CCSDSSeqType: U8 {
    Segment = 0x00,
    FirstSegment = 0x01,
    LastSegment = 0x02,
    UnSegmented = 0x03
  }

  @ CCSDS packet base class
  struct CCSDSPacketBase {
    TargetAddr: SpaceWireAddr,
    UserApplication: U8,
    Type: bool,
    SecHdrFlag: bool,
    APID: U16, # serialized as 11
    SeqFlags: CCSDSSeqType,
    SeqCnt: U16, # serialized as 14
    Data: Fw.Buffer
  }

  @ CCSDS packet class
  type CCSDSPacket
}
