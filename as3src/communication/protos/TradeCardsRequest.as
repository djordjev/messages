package communication.protos {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class TradeCardsRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const CARDID1:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("communication.protos.TradeCardsRequest.cardId1", "cardId1", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var cardId1:int;

		/**
		 *  @private
		 */
		public static const CARDID2:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("communication.protos.TradeCardsRequest.cardId2", "cardId2", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var cardId2:int;

		/**
		 *  @private
		 */
		public static const CARDID3:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("communication.protos.TradeCardsRequest.cardId3", "cardId3", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var cardId3:int;

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.cardId1);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.cardId2);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.cardId3);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var cardId1$count:uint = 0;
			var cardId2$count:uint = 0;
			var cardId3$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (cardId1$count != 0) {
						throw new flash.errors.IOError('Bad data format: TradeCardsRequest.cardId1 cannot be set twice.');
					}
					++cardId1$count;
					this.cardId1 = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (cardId2$count != 0) {
						throw new flash.errors.IOError('Bad data format: TradeCardsRequest.cardId2 cannot be set twice.');
					}
					++cardId2$count;
					this.cardId2 = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (cardId3$count != 0) {
						throw new flash.errors.IOError('Bad data format: TradeCardsRequest.cardId3 cannot be set twice.');
					}
					++cardId3$count;
					this.cardId3 = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
