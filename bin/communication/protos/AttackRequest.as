package communication.protos {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import communication.protos.Command;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class AttackRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const COMMAND:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("communication.protos.AttackRequest.command", "command", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return communication.protos.Command; });

		public var command:communication.protos.Command;

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.command);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var command$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (command$count != 0) {
						throw new flash.errors.IOError('Bad data format: AttackRequest.command cannot be set twice.');
					}
					++command$count;
					this.command = new communication.protos.Command();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.command);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
