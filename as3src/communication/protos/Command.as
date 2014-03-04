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
	public dynamic final class Command extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const COMMANDID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("communication.protos.Command.commandId", "commandId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var commandId$field:int;

		private var hasField$0:uint = 0;

		public function clearCommandId():void {
			hasField$0 &= 0xfffffffe;
			commandId$field = new int();
		}

		public function get hasCommandId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set commandId(value:int):void {
			hasField$0 |= 0x1;
			commandId$field = value;
		}

		public function get commandId():int {
			return commandId$field;
		}

		/**
		 *  @private
		 */
		public static const SOURCETERRITORY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("communication.protos.Command.sourceTerritory", "sourceTerritory", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var sourceTerritory:int;

		/**
		 *  @private
		 */
		public static const DESTINATIONTERRITORY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("communication.protos.Command.destinationTerritory", "destinationTerritory", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var destinationTerritory:int;

		/**
		 *  @private
		 */
		public static const NUMBEROFUNITS:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("communication.protos.Command.numberOfUnits", "numberOfUnits", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		public var numberOfUnits:int;

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasCommandId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, commandId$field);
			}
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.sourceTerritory);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.destinationTerritory);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.numberOfUnits);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var commandId$count:uint = 0;
			var sourceTerritory$count:uint = 0;
			var destinationTerritory$count:uint = 0;
			var numberOfUnits$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (commandId$count != 0) {
						throw new flash.errors.IOError('Bad data format: Command.commandId cannot be set twice.');
					}
					++commandId$count;
					this.commandId = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (sourceTerritory$count != 0) {
						throw new flash.errors.IOError('Bad data format: Command.sourceTerritory cannot be set twice.');
					}
					++sourceTerritory$count;
					this.sourceTerritory = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (destinationTerritory$count != 0) {
						throw new flash.errors.IOError('Bad data format: Command.destinationTerritory cannot be set twice.');
					}
					++destinationTerritory$count;
					this.destinationTerritory = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (numberOfUnits$count != 0) {
						throw new flash.errors.IOError('Bad data format: Command.numberOfUnits cannot be set twice.');
					}
					++numberOfUnits$count;
					this.numberOfUnits = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
