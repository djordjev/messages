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
	public dynamic final class User extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const USERID:FieldDescriptor$TYPE_INT64 = new FieldDescriptor$TYPE_INT64("communication.protos.User.userId", "userId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var userId:Int64;

		/**
		 *  @private
		 */
		public static const FACEBOOKID:FieldDescriptor$TYPE_INT64 = new FieldDescriptor$TYPE_INT64("communication.protos.User.facebookId", "facebookId", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var facebookId$field:Int64;

		public function clearFacebookId():void {
			facebookId$field = null;
		}

		public function get hasFacebookId():Boolean {
			return facebookId$field != null;
		}

		public function set facebookId(value:Int64):void {
			facebookId$field = value;
		}

		public function get facebookId():Int64 {
			return facebookId$field;
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_INT64(output, this.userId);
			if (hasFacebookId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT64(output, facebookId$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var userId$count:uint = 0;
			var facebookId$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (userId$count != 0) {
						throw new flash.errors.IOError('Bad data format: User.userId cannot be set twice.');
					}
					++userId$count;
					this.userId = com.netease.protobuf.ReadUtils.read$TYPE_INT64(input);
					break;
				case 2:
					if (facebookId$count != 0) {
						throw new flash.errors.IOError('Bad data format: User.facebookId cannot be set twice.');
					}
					++facebookId$count;
					this.facebookId = com.netease.protobuf.ReadUtils.read$TYPE_INT64(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
