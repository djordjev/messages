package com.communication {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import com.communication.User;
	import com.communication.UserStatistics;
	import com.communication.GameContext;
	import com.communication.GameDescription;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class UserData extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ME:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("com.communication.UserData.me", "me", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return com.communication.User; });

		private var me$field:com.communication.User;

		public function clearMe():void {
			me$field = null;
		}

		public function get hasMe():Boolean {
			return me$field != null;
		}

		public function set me(value:com.communication.User):void {
			me$field = value;
		}

		public function get me():com.communication.User {
			return me$field;
		}

		/**
		 *  @private
		 */
		public static const STATISTICS:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("com.communication.UserData.statistics", "statistics", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return com.communication.UserStatistics; });

		public var statistics:com.communication.UserStatistics;

		/**
		 *  @private
		 */
		public static const INVITES:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("com.communication.UserData.invites", "invites", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return com.communication.GameDescription; });

		[ArrayElementType("com.communication.GameDescription")]
		public var invites:Array = [];

		/**
		 *  @private
		 */
		public static const JOINEDGAMES:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("com.communication.UserData.joinedGames", "joinedGames", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return com.communication.GameContext; });

		[ArrayElementType("com.communication.GameContext")]
		public var joinedGames:Array = [];

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasMe) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, me$field);
			}
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.statistics);
			for (var invites$index:uint = 0; invites$index < this.invites.length; ++invites$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.invites[invites$index]);
			}
			for (var joinedGames$index:uint = 0; joinedGames$index < this.joinedGames.length; ++joinedGames$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.joinedGames[joinedGames$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var me$count:uint = 0;
			var statistics$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (me$count != 0) {
						throw new flash.errors.IOError('Bad data format: UserData.me cannot be set twice.');
					}
					++me$count;
					this.me = new com.communication.User();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.me);
					break;
				case 2:
					if (statistics$count != 0) {
						throw new flash.errors.IOError('Bad data format: UserData.statistics cannot be set twice.');
					}
					++statistics$count;
					this.statistics = new com.communication.UserStatistics();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.statistics);
					break;
				case 3:
					this.invites.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new com.communication.GameDescription()));
					break;
				case 4:
					this.joinedGames.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new com.communication.GameContext()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
