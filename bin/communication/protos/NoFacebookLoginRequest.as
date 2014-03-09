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
	public dynamic final class NoFacebookLoginRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const USERNAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("communication.protos.NoFacebookLoginRequest.username", "username", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		public var username:String;

		/**
		 *  @private
		 */
		public static const PASSWORDHASH:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("communication.protos.NoFacebookLoginRequest.passwordHash", "passwordHash", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		public var passwordHash:String;

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, this.username);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, this.passwordHash);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var username$count:uint = 0;
			var passwordHash$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (username$count != 0) {
						throw new flash.errors.IOError('Bad data format: NoFacebookLoginRequest.username cannot be set twice.');
					}
					++username$count;
					this.username = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 2:
					if (passwordHash$count != 0) {
						throw new flash.errors.IOError('Bad data format: NoFacebookLoginRequest.passwordHash cannot be set twice.');
					}
					++passwordHash$count;
					this.passwordHash = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
