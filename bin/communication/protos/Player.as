package communication.protos {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import communication.protos.User;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class Player extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const USER:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("communication.protos.Player.user", "user", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return communication.protos.User; });

		public var user:communication.protos.User;

		/**
		 *  @private
		 */
		public static const COLOR:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("communication.protos.Player.color", "color", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var color:int;

		/**
		 *  @private
		 */
		public static const ISPLAYEDMOVE:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("communication.protos.Player.isPlayedMove", "isPlayedMove", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var isPlayedMove:Boolean;

		/**
		 *  @private
		 */
		public static const CARDS:RepeatedFieldDescriptor$TYPE_INT32 = new RepeatedFieldDescriptor$TYPE_INT32("communication.protos.Player.cards", "cards", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("int")]
		public var cards:Array = [];

		/**
		 *  @private
		 */
		public static const NUMBEROFREINFORCMENTS:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("communication.protos.Player.numberOfReinforcments", "numberOfReinforcments", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var numberOfReinforcments$field:int;

		private var hasField$0:uint = 0;

		public function clearNumberOfReinforcments():void {
			hasField$0 &= 0xfffffffe;
			numberOfReinforcments$field = new int();
		}

		public function get hasNumberOfReinforcments():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set numberOfReinforcments(value:int):void {
			hasField$0 |= 0x1;
			numberOfReinforcments$field = value;
		}

		public function get numberOfReinforcments():int {
			return numberOfReinforcments$field;
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.user);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.color);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, this.isPlayedMove);
			for (var cards$index:uint = 0; cards$index < this.cards.length; ++cards$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.cards[cards$index]);
			}
			if (hasNumberOfReinforcments) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, numberOfReinforcments$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var user$count:uint = 0;
			var color$count:uint = 0;
			var isPlayedMove$count:uint = 0;
			var numberOfReinforcments$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (user$count != 0) {
						throw new flash.errors.IOError('Bad data format: Player.user cannot be set twice.');
					}
					++user$count;
					this.user = new communication.protos.User();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.user);
					break;
				case 2:
					if (color$count != 0) {
						throw new flash.errors.IOError('Bad data format: Player.color cannot be set twice.');
					}
					++color$count;
					this.color = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (isPlayedMove$count != 0) {
						throw new flash.errors.IOError('Bad data format: Player.isPlayedMove cannot be set twice.');
					}
					++isPlayedMove$count;
					this.isPlayedMove = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				case 4:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_INT32, this.cards);
						break;
					}
					this.cards.push(com.netease.protobuf.ReadUtils.read$TYPE_INT32(input));
					break;
				case 5:
					if (numberOfReinforcments$count != 0) {
						throw new flash.errors.IOError('Bad data format: Player.numberOfReinforcments cannot be set twice.');
					}
					++numberOfReinforcments$count;
					this.numberOfReinforcments = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
