Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4737B8C4EBF
	for <lists+jfs-discussion@lfdr.de>; Tue, 14 May 2024 12:14:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1s6pAL-0004gR-Ed;
	Tue, 14 May 2024 10:13:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <gregkh@linuxfoundation.org>) id 1s6pAK-0004gD-Bk
 for jfs-discussion@lists.sourceforge.net;
 Tue, 14 May 2024 10:13:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LYlH656AzxpuotL8bHwhtjdv7jAltBajeb7BPofFV4I=; b=V3bCscBZq5+/7+TTVKVkEs3AHF
 GH6Vyqw5GFhkXYEy5cjV3ArMo2Q27tFMvxQueQBsiL6wV5xXCzdPrYql7trogMc/9d+zxxo5qxPqV
 8HJ4Rt4dG2kaLIh3yqF27FH5s+NgMjuZr6YX3XjtVPEsl5KIQg0TE/ewwFif7P7PEdYI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LYlH656AzxpuotL8bHwhtjdv7jAltBajeb7BPofFV4I=; b=lRj91jKvHd5duGxNy1LlriqsZx
 /ZpNn96fZkhMD8NBvbWo/v7Zbvh3OrXImjD3ApRlePaWBAMPFYbLSDXRoXwNqqZcpTuCY/M4zJNvx
 2+YfgwSsgoNUN9TIVvLIQbWFh6uDferKgLPr1rewGPmHSUBfm1agnki1ik559kCl33MA=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s6pAL-0005bS-Ff for jfs-discussion@lists.sourceforge.net;
 Tue, 14 May 2024 10:13:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id C4EDACE123B;
 Tue, 14 May 2024 10:13:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 078A4C32781;
 Tue, 14 May 2024 10:13:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1715681616;
 bh=yL094DOWhtq62H4wWeSvXEnUMe22E6zd1a/lZ+40r6U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=q8ykKTC6Q/q8G3qa3pg2fb+B9a/DuSZOqO+hJNM3esnSaoWWcFnVvqP/DxFn3SRBT
 lxzE83qxLmwZbYuM6kANJr2FsLUvZnVmxNUw9OVV4ZOI5iOUrLeFnwfiGJJlhhB0PS
 TGSyqPt7qHZ4iFzzih4BNmFm+SKQT9QxcRzf9Nc8=
Date: Tue, 14 May 2024 12:12:26 +0200
To: syzbot <syzbot+9dfe490c8176301c1d06@syzkaller.appspotmail.com>
Message-ID: <2024051411-malt-purse-7444@gregkh>
References: <00000000000059b4d50617913536@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <00000000000059b4d50617913536@google.com>
X-Spam-Score: -1.2 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, May 03, 2024 at 11:51:33AM -0700, syzbot wrote: >
 Hello, > > syzbot found the following issue on: > > HEAD commit: 6a71d2909427
 Merge branch 'for-next/core' into for-kernelci > git tree: git:/ [...] 
 Content analysis details:   (-1.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googleapis.com]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [145.40.73.55 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -1.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1s6pAL-0005bS-Ff
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] KASAN: slab-out-of-bounds Read
 in ea_get (2)
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
From: Greg KH via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Greg KH <gregkh@linuxfoundation.org>
Cc: linux-fsdevel@vger.kernel.org, shaggy@kernel.org,
 jfs-discussion@lists.sourceforge.net, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Fri, May 03, 2024 at 11:51:33AM -0700, syzbot wrote:
> Hello,
> 
> syzbot found the following issue on:
> 
> HEAD commit:    6a71d2909427 Merge branch 'for-next/core' into for-kernelci
> git tree:       git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-kernelci
> console output: https://syzkaller.appspot.com/x/log.txt?x=17374a40980000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=fca646cf17cc616b
> dashboard link: https://syzkaller.appspot.com/bug?extid=9dfe490c8176301c1d06
> compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
> userspace arch: arm64
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=12f9a8a7180000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=10f932a0980000
> 
> Downloadable assets:
> disk image: https://storage.googleapis.com/syzbot-assets/c77d21fa1405/disk-6a71d290.raw.xz
> vmlinux: https://storage.googleapis.com/syzbot-assets/429fcd369816/vmlinux-6a71d290.xz
> kernel image: https://storage.googleapis.com/syzbot-assets/d3d8a4b85112/Image-6a71d290.gz.xz
> mounted in repro: https://storage.googleapis.com/syzbot-assets/ba0e4fef7b4b/mount_0.gz
> 
> IMPORTANT: if you fix the issue, please add the following tag to the commit:
> Reported-by: syzbot+9dfe490c8176301c1d06@syzkaller.appspotmail.com

Proposed fix sent here:
	https://lore.kernel.org/r/2024051433-slider-cloning-98f9@gregkh



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
