Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EE8E13F5067
	for <lists+jfs-discussion@lfdr.de>; Mon, 23 Aug 2021 20:33:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:References:In-Reply-To:To:MIME-Version:Date:
	Message-ID:Sender:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=obZ8NiSK+dTV5/+7npEBlSfwgHMiIdidFjIb9Wc4BgU=; b=JFuvcP1Ya33sQvkN4DUsqlux/s
	TO+FwTrfbl6WgFAyFNAS0WmJ0LED15U22/xHXphymPbxcQradIo46lfSTUJwZgBnBt0xTAHsFJvsS
	/xlEECbB31fLP/0aIjJcs5XmTL+SFtRCbwQa3xzwx5JhD8ojhU7sJvPFMYDKKIunKUIQ=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mIElH-0002F1-Ar; Mon, 23 Aug 2021 18:33:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <postmaster@root.for.sabi.co.uk>) id 1mIElF-0002Em-Ef
 for jfs-discussion@lists.SourceForge.net; Mon, 23 Aug 2021 18:33:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=From:References:In-Reply-To:Subject:To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:Sender:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AOIhnRmdW62k7x3NzHHQAwNSUOWxeRhulQ2B7dBNS2U=; b=QPC73D1Y1JsA5JsnW4ModsijQb
 stqiCJLrFfStofZYAPsHSqUW02rlcMBvNEhMqryVVdP5+4f/fkOldPgAsZaQwTyNs6WDMwXT3q8gx
 IRPmEfQw/lHNiRjBhW54llFjXngkIVJQ6ENU41vLcTLoKNjEfXzZ1JVjNTcVDiPVzQM8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=From:References:In-Reply-To:Subject:To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AOIhnRmdW62k7x3NzHHQAwNSUOWxeRhulQ2B7dBNS2U=; b=dM1Mi5KOKvj6BKvoQZGx6e6BCl
 OzPWddW8qYMqfhI2DplCyBP0IpVOOcCzZEwr2Jy8NpDYNIvJo5sTEBxDlvLkmSwx1FR+FTAKR6wfv
 Kc5UeT2MdvmsPz7YMYbhmgMSOSZ9NqaK3bC+onrnCMdgYzSZ6PwjA63JbVV0Z8u4043s=;
Received: from smtp.sabi.co.uk ([185.17.255.29] helo=sabi.co.uk)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mIElD-00G3jX-EA
 for jfs-discussion@lists.SourceForge.net; Mon, 23 Aug 2021 18:33:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sabi.co.uk; 
 s=dkim-00; h=From:References:In-Reply-To:Subject:To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:Sender:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AOIhnRmdW62k7x3NzHHQAwNSUOWxeRhulQ2B7dBNS2U=; b=P+uMk6oapruJzmsDYdxRz5gvbo
 hV+1ZZjfnwJvczRsw7vGPjgaFqvULrfbBzpYQEWcyDWmxqqmdTBYNwD2TsVbWx7qDU0dr8mW3ISFA
 W6zjsIS55OTRB8obW0L6DNjBJoqxDgmQHLvm6NqqSiBL3RnIlpqa/wRXy0HdYymrxJ3l7M5NOwOq5
 H9RPH8ZzCFLYxWwr8oM4VE81mwOPvaB1rZO74ehtmWZ4zRQcT8KG/r/zl3DR/S9qqL4JpLRlLy8A5
 aV/RgIP/Oj3NYzX8Zh2yVMMQonGhhMvHBTUU+lp4IycSdm1pMUxRgIiwBBRkt3YhedsSM7toiIb/q
 6Z56CHRQ==;
Received: from b2b-37-24-20-172.unitymedia.biz ([37.24.20.172] helo=sabi.co.uk)
 by sabi.co.uk with esmtpsa(Cipher
 TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)(Exim 4.93 id
 1mIEl5-007jpW-S4	id 1mIEl5-007jpW-S4by authid <sabity>with cram
 for <jfs-discussion@lists.SourceForge.net>; Mon, 23 Aug 2021 18:33:19 +0000
Received: from [127.0.0.1] (helo=cyme.ty.sabi.co.uk)
 by sabi.co.uk with esmtp(Exim 4.93 5) id 1mIEl2-005Jyx-2p
 for <jfs-discussion@lists.SourceForge.net>; Mon, 23 Aug 2021 20:33:16 +0200
Message-ID: <24867.59883.813604.12280@cyme.ty.sabi.co.uk>
Date: Mon, 23 Aug 2021 20:33:15 +0200
MIME-Version: 1.0
X-Face: SMJE]JPYVBO-9UR%/8d'mG.F!@.,l@c[f'[%S8'BZIcbQc3/">GrXDwb#; fTRGNmHr^JFb
 SAptvwWc,
 0+z+~p~"Gdr4H$(|N(yF(wwCM2bW0~U?HPEE^fkPGx^u[*[yV.gyB!hDOli}EF[\cW*S
 H<GG"+i\3#fp@@EeWZWBv; ]LA5n1pS2VO%Vv[yH?kY'lEWr30WfIU?%>&spRGFL}{`bj1TaD^l/"[
 msn( /TH#THs{Hpj>)]f><W}Ck9%2?H"AEM)+9<@D;3Kv=^?4$1/+#Qs:-aSsBTUS]iJ$6
Precedence: air-mail
To: list Linux fs JFS <jfs-discussion@lists.SourceForge.net>
In-Reply-To: <28b8d55e-8e8e-aed3-fa63-618b9c5a02bf@oracle.com>
References: <24867.49915.325040.460629@cyme.ty.sabi.co.uk>
 <28b8d55e-8e8e-aed3-fa63-618b9c5a02bf@oracle.com>
X-Mailer: VM 8.2.0b under 26.3 (x86_64-pc-linux-gnu)
X-Disclaimer: This message contains only personal opinions
X-Blacklisted-At: 
X-Spam-Score: -1.1 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: > [...] the JFS code actually has the infrastructure to
 support
 > this. FILESYSTEM_I = 16 is the aggregate inode that describes > the
 mountable
 filesystem. Each inode actually points to it > with file [...] 
 Content analysis details:   (-1.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 1.0 FORGED_SPF_HELO        No description available.
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1mIElD-00G3jX-EA
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

> [...] the JFS code actually has the infrastructure to support
> this. FILESYSTEM_I = 16 is the aggregate inode that describes
> the mountable filesystem. Each inode actually points to it
> with fileset or di_fileset member (which is always 16).

Thnks for the reply, that is interesting, and I was remembering
mostly right.

> Each would have a distinct i-number space. They'd all reside
> on the same device, so there would be no distinction of
> device-id. I guess the rationale was they would allocate from
> the same free space.

By space I meant "name space", that is range of numbers; in
Btrfs and ZFS each filesystem instance root has a different
device-id so each can use the same full i-number range, which
simplifies things.

Using distinct device-ids also means that hard-links between two
directories under different roots become impossible, which is
good because handling such shared inodes would require extra
work, and in general linking across mount points is not an UNIX
thing, and I like that JFS is still one of the smallest "full
functionality" and high performance (except for fragmentation)
filesystem types:

http://www.sabi.co.uk/blog/21-one.html?210123#210123

BTW my question happened because I was reading a misguided Linux
kernel discussion about NFS and Btrfs, and I wrote an overview
of the issues here including my memory of the JFS possibility to
have multiple filesystem instance root directories:

http://www.sabi.co.uk/blog/21-two.html?210804#210804

> The design was done before any practical resizing was
> implemented, so it would give a degree of flexibility with
> file system sizes.

That's a useful and interesting motivation, pretty much also the
same motivation for subvolumes in Btrfs abd Zfs. BTW I have
become a bit skeptical about snapshots (they add too much
complexity), but multiple root directories (subvolumes) are I
think fairly useful because of that "degree of flexibility".


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
