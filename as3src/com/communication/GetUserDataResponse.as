package com.communication {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import com.communication.UserData;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class GetUserDataResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const USERDATA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("com.communication.GetUserDataResponse.userData", "userData", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return com.communication.UserData; });

		public var userData:com.communication.UserData;

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.userData);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var userData$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (userData$count != 0) {
						throw new flash.errors.IOError('Bad data format: GetUserDataResponse.userData cannot be set twice.');
					}
					++userData$count;
					this.userData = new com.communication.UserData();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.userData);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
