Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C5233F517A
	for <lists+jfs-discussion@lfdr.de>; Mon, 23 Aug 2021 21:45:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:References:In-Reply-To:To:Date:Message-ID:
	MIME-Version:Sender:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mF2z1S5E79ah1Vs2vowyn/9fB6g6S4JKHl5feKaj0fA=; b=cIq6TX9RrpDA1952wCRTR2JAPD
	KqO//PVJdaBUcT4SAbm2+uF3tQ4nZpY4nkxfUVjPTF57YNo3DESdK+/bijhzXUc1Ox4xJ0jxC5w2U
	NFoKl15/wwxq+CA2f5vQ5iK2jqOAzLvAhGe+pZANVUMTWmQo28JG2JZMFLzoM/YfvzA4=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mIFsL-0003dK-In; Mon, 23 Aug 2021 19:44:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <postmaster@root.for.sabi.co.uk>) id 1mIFsJ-0003dC-Bw
 for jfs-discussion@lists.SourceForge.net; Mon, 23 Aug 2021 19:44:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=From:References:In-Reply-To:Subject:To:Date:
 Message-ID:Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=S3JceWpBSh873KJ3I7Th2F8e8UAccdRyxBbPGJDvJXU=; b=hyG4xa/2vbUQBjrqNMJ0lLa63E
 dzmsU1hFpxh8Dlr16rmazdAkJr9B4jOOA/yY7535P5i5a+rWGUcmv7b6aznSPYhNCf9OoqZL6M5dB
 gJTuOklRaJWI6n77lauH2rz6sME2MwQLA/dKCGynseKQEIvIUhJjUZ1T2uop025ganyM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=From:References:In-Reply-To:Subject:To:Date:Message-ID:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=S3JceWpBSh873KJ3I7Th2F8e8UAccdRyxBbPGJDvJXU=; b=c2Tg5p6ut8Yqbu6clwKyLaW9jf
 /XO288UxC7FjvWnku0vyI2rWuMIcInSo96Ox4AGUNXsML3XI8lg2q1fA4JZjatb6N2l0HRBvjBpoU
 mRPyJ95jlXZdKJzj72LXxCSNyhMYEEO0kDCDncuXW5hZwQKut/xQxSaZGmo0EVG14V7s=;
Received: from smtp.sabi.co.uk ([185.17.255.29] helo=sabi.co.uk)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mIFsE-0007Gp-TV
 for jfs-discussion@lists.SourceForge.net; Mon, 23 Aug 2021 19:44:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sabi.co.uk; 
 s=dkim-00;
 h=From:References:In-Reply-To:Subject:To:Date:Message-ID:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=S3JceWpBSh873KJ3I7Th2F8e8UAccdRyxBbPGJDvJXU=; b=JUN8yDcnyR9J7hbfAIy+mfXyqp
 7LVTzKS+7kfJteK2RwrFD5dZ/BcNV3uN/bM5FxI/I5QxC6/Luyz9e3EaQKZ9LmFkCCB4SOVBHfyPa
 KTa7hiI1f8UtzLTmeEwn2gHjyxumCbhZ0vGBCreDxRP3opKqGKlErzGSo6elya7xylbTq/oTgRJk9
 G11D7YNZzX+y5miXax5UGmR8ax0YAJqRKiX+8Kn1mcTeEhAPKOo+7/WmJnR09LgPRJWyJ73KDhrAz
 VY0c9JQ/6WM6jFyctEjBehP1tnBOz6vJCJy0AL2VZoXEQqNUjS53iOi6HAY0t5PMbJoOPUnQRUuoT
 5vFWh6rg==;
Received: from b2b-37-24-20-172.unitymedia.biz ([37.24.20.172] helo=sabi.co.uk)
 by sabi.co.uk with esmtpsa(Cipher
 TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)(Exim 4.93 id
 1mIFs6-007k06-5r	id 1mIFs6-007k06-5rby authid <sabity>with cram
 for <jfs-discussion@lists.SourceForge.net>; Mon, 23 Aug 2021 19:44:38 +0000
Received: from [127.0.0.1] (helo=cyme.ty.sabi.co.uk)
 by sabi.co.uk with esmtp(Exim 4.93 5) id 1mIFs2-005KTe-6b
 for <jfs-discussion@lists.SourceForge.net>; Mon, 23 Aug 2021 21:44:34 +0200
MIME-Version: 1.0
Message-ID: <24867.64162.83642.728478@cyme.ty.sabi.co.uk>
Date: Mon, 23 Aug 2021 21:44:34 +0200
Precedence: air-mail
To: list Linux fs JFS <jfs-discussion@lists.SourceForge.net>
In-Reply-To: <5c37d98a-f830-579f-6094-bb0330c5a032@oracle.com>
References: <24867.49915.325040.460629@cyme.ty.sabi.co.uk>
 <28b8d55e-8e8e-aed3-fa63-618b9c5a02bf@oracle.com>
 <24867.59883.813604.12280@cyme.ty.sabi.co.uk>
 <5c37d98a-f830-579f-6094-bb0330c5a032@oracle.com>
X-Mailer: VM 8.2.0b under 26.3 (x86_64-pc-linux-gnu)
X-Disclaimer: This message contains only personal opinions
X-Blacklisted-At: 
X-Spam-Score: -1.0 (-)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 FORGED_SPF_HELO        No description available.
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1mIFsE-0007Gp-TV
Subject: Re: [Jfs-discussion] historical detail: multiple filesystem
 instance roots?
X-BeenThere: jfs-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
List-Id: <jfs-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=jfs-discussion>
List-Post: <mailto:jfs-discussion@lists.sourceforge.net>
List-Help: <mailto:jfs-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=subscribe>
From: Peter Grandi via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Peter Grandi <pg@jfs.list.sabi.co.UK>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

[...]

> I guess the device-id would be equivalent to the fileset in
> JFS. Each fileset has it's own i-number space and links would
> always be within the same fileset.

Yes, pretty much also what Btrfs and ZFS call a "subvolume".
BTW I wrote long ago a small summary of the JFS data structures,
from the JFS documentation, here:

http://www.sabi.co.uk/Notes/linuxFS.html#jfsStruct

And indeed my memory was that the JFS documentation said that in
theory one could have multiple filesets, but it was not fully
realized in the Linux version.

> I see. Btrfs does some kind of trick to create a sub-device

It is not a trick: indeed originally on Edition 7 UNIX the
device-id was literally the major-minor of the containing block
device, but soon with "virtual" and network filesystem it
evolved in just a unique id.

> so that the kernel knows how to specify which sub-volume to
> mount.

That is one reason, but the main reason is that both Btrfs and
ZFS have snapshot subvolumes, and without having different
device-id for original and snapshot, all i-inodes would have to
be renumbered on snapshotting, instead the snapshot is just
given a new device-id.

> I've never given any thought to that since I've never expected
> to enable a second fileset.

I am happy with JFS with a single fileset. :-) But if one day
someone is given time by IBM to have multiple filesets on Linux
it would be a neat feature (e.g. potentially faster 'fsck' too),
and I suspect it would not add many lines of code. :-)

Thanks again.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
