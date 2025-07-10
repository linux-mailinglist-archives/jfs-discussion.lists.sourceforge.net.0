Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F1CBCAFFB30
	for <lists+jfs-discussion@lfdr.de>; Thu, 10 Jul 2025 09:43:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
	Message-ID:To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TtjM43tM3TsMl6znGr3YaBd26KK0UrWhEGWLem66UXA=; b=S20fyu6zgehSYf8tpeHdfjMlMW
	r0PItr9gzsd3dx51nP5H9Qu+ow6th8TG/dOXcIz51DF0Y2FOFbdZhRU/rmGBJxb3OFiTRuvWGO/4v
	5mRQD3kJZYyrJgmOT4YrGBR1NDeEUtqqCiKi9L3ErW3+MQraEhUI8gXPbRfjszTBEvD4=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uZlvL-0007BC-2i;
	Thu, 10 Jul 2025 07:42:31 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1uZlvK-0007B6-C2
 for jfs-discussion@lists.sourceforge.net;
 Thu, 10 Jul 2025 07:42:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AsnKN72VKITZgWccSzJuBc9+sBcTUWFMhokOzCByo8E=; b=K7x6mtdMRh575G1Y34UWs6eNfc
 GSFzJZDigjVY1vU01V0QIM/HFdGnUiBJc+/ntALHAgd8j4AokrFVLpACTCCD3M1T1vvFblttBEXa+
 q5ICt+bistgbUGVmOmOQeWwm7eW+GRn8gF9wJtGru/IMGoQXaFVKr0DnkDozXjGFfa1A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AsnKN72VKITZgWccSzJuBc9+sBcTUWFMhokOzCByo8E=; b=HsRA6y3KwCdy0LbhQ5ZzuUSam2
 Q4HF7d4r1E5K1Uj+o4apYQb4vWQmGsz3t5kk2/3E9GTN/7MdibCiabFAONvXyJBM/3THUfCnQEO00
 5tHcy3GojqGgCij+PqvwdJ10NbWvT8TrERWnG74JLjMglPfCZBp8hfbjbnmJZ/skq6Iw=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uZlvJ-0006Ja-OU for jfs-discussion@lists.sourceforge.net;
 Thu, 10 Jul 2025 07:42:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 6157D5C6AD5;
 Thu, 10 Jul 2025 07:42:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49ABAC4CEE3;
 Thu, 10 Jul 2025 07:42:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1752133339;
 bh=5HRCIqpzoAh0WXlu0yZBnyBN2sSTIllnMwkUl+dRio4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JRavN8q+200eZihwvBuXy+p6Yd11P7b3U0n8eZwyaoiShn+t9JXXPAQ5Y253hDyqT
 GhaS7V//zKvEN8EGuh5P5FRlL6LlSV90ia7TbemMqDTZZ5MK3RQqxxn6mdPBr/2/MY
 +WdtKlYfkRPZpSKh7pOxF0yQ57i51p3EQnKDyVUFYwLgWjl8fdzKDWXGXhG2viBUxh
 U/VRFE9EbXmHupE4x1u+gtPN3gXYfi2tG/p8amSgfjdYcNTfUeOGPZh7pdOOvJdJFW
 ueoHDoApOKisedgJCmPmY/G7QWUTAwLLDvuQ5tr46xaUcVtUMXCQi3C6FOCXOIdoFz
 a28AcikNG37Mg==
Date: Thu, 10 Jul 2025 09:42:13 +0200
To: Jan Kara <jack@suse.cz>
Message-ID: <20250710-getrunken-fazit-74e068b05c16@brauner>
References: <686d5a9f.050a0220.1ffab7.0015.GAE@google.com>
 <xrpmf6yj32iirfaumpbal6qxph7mkmgwtra7p4hpbvzozlp4zr@2bzl4p5ejgfj>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <xrpmf6yj32iirfaumpbal6qxph7mkmgwtra7p4hpbvzozlp4zr@2bzl4p5ejgfj>
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Jul 09, 2025 at 10:30:12AM +0200, Jan Kara wrote:
 > Hi! > > On Tue 08-07-25 10:51:27,
 syzbot wrote: > > syzbot found the following
 issue on: > > > > HEAD commit: d7b8f8e20813 Linux 6.16-rc5 > [...] 
 Content analysis details:   (-0.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1uZlvJ-0006Ja-OU
Subject: Re: [Jfs-discussion] [syzbot] [nilfs?] kernel BUG in may_open (2)
X-BeenThere: jfs-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <jfs-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=jfs-discussion>
List-Post: <mailto:jfs-discussion@lists.sourceforge.net>
List-Help: <mailto:jfs-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=subscribe>
From: Christian Brauner via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Christian Brauner <brauner@kernel.org>
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 mjguzik@gmail.com, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 linux-nilfs@vger.kernel.org, viro@zeniv.linux.org.uk,
 syzbot <syzbot+895c23f6917da440ed0d@syzkaller.appspotmail.com>,
 linux-fsdevel@vger.kernel.org, ntfs3@lists.linux.dev,
 konishi.ryusuke@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Wed, Jul 09, 2025 at 10:30:12AM +0200, Jan Kara wrote:
> Hi!
> 
> On Tue 08-07-25 10:51:27, syzbot wrote:
> > syzbot found the following issue on:
> > 
> > HEAD commit:    d7b8f8e20813 Linux 6.16-rc5
> > git tree:       upstream
> > console+strace: https://syzkaller.appspot.com/x/log.txt?x=107e728c580000
> > kernel config:  https://syzkaller.appspot.com/x/.config?x=72aa0474e3c3b9ac
> > dashboard link: https://syzkaller.appspot.com/bug?extid=895c23f6917da440ed0d
> > compiler:       Debian clang version 20.1.7 (++20250616065708+6146a88f6049-1~exp1~20250616065826.132), Debian LLD 20.1.7
> > syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=11305582580000
> > C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=10952bd4580000
> > 
> > Downloadable assets:
> > disk image: https://storage.googleapis.com/syzbot-assets/605b3edeb031/disk-d7b8f8e2.raw.xz
> > vmlinux: https://storage.googleapis.com/syzbot-assets/a3cb6f3ea4a9/vmlinux-d7b8f8e2.xz
> > kernel image: https://storage.googleapis.com/syzbot-assets/cd9e0c6a9926/bzImage-d7b8f8e2.xz
> > mounted in repro: https://storage.googleapis.com/syzbot-assets/2a7ab270a8da/mount_0.gz
> > 
> > The issue was bisected to:
> > 
> > commit af153bb63a336a7ca0d9c8ef4ca98119c5020030
> > Author: Mateusz Guzik <mjguzik@gmail.com>
> > Date:   Sun Feb 9 18:55:21 2025 +0000
> > 
> >     vfs: catch invalid modes in may_open()
> > 
> > bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=17f94a8c580000
> > final oops:     https://syzkaller.appspot.com/x/report.txt?x=14054a8c580000
> > console output: https://syzkaller.appspot.com/x/log.txt?x=10054a8c580000
> > 
> > IMPORTANT: if you fix the issue, please add the following tag to the commit:
> > Reported-by: syzbot+895c23f6917da440ed0d@syzkaller.appspotmail.com
> > Fixes: af153bb63a33 ("vfs: catch invalid modes in may_open()")
> > 
> > VFS_BUG_ON_INODE(!IS_ANON_FILE(inode)) encountered for inode ffff8880724735b8
> 
> FWIW the reproducer just mounts a filesystem image and opens a file there
> which crashes because the inode type is invalid. Which suggests there's
> insufficient validation of inode metadata (in particular the inode mode)
> being loaded from the disk... There are reproducers in the syzbot dashboard
> for nilfs2, ntfs3, isofs, jfs. I'll take care of isofs, added other
> filesystem maintainers to CC.

I'm certainly happy to have added that assert.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
