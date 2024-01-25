Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 34F4683C78B
	for <lists+jfs-discussion@lfdr.de>; Thu, 25 Jan 2024 17:08:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rT2HK-0007NM-D0;
	Thu, 25 Jan 2024 16:08:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1rT2HJ-0007NG-M0
 for jfs-discussion@lists.sourceforge.net;
 Thu, 25 Jan 2024 16:08:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=07TijO/ND6aeTXIznFVPjV7kfbOidnn88ORL13ZKlnU=; b=ikFjNGKbGQjQ2EveqVvO0aO9j1
 Kvq9FP7LNFDZGJtyn5ceDrUAL7R9ulkbRJGpNhx6fLQzUVNsBrFFRRgqOoAt5UaP1pRUQWcMJWznS
 4dQloP9x704DlhIyktMj8/oHTlxB3pjn8UDH8W4uAcEU0OvWdH3EKf7zZ2wt1mR+3Zhg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=07TijO/ND6aeTXIznFVPjV7kfbOidnn88ORL13ZKlnU=; b=XPUvXmYjlK8OzODcCqgDtFWw/E
 uSwquRo5iigbzCeqjFzlu9OhFO0rmkk8cJNZuKDBgBrPFoPtaJZWlHk86HvuTmXKz4h13hu7TUrCe
 7BJsjAcrTlrPWYRitcJ/Xa6IrBj8BzTyeN/1BfS33lk8ZMiVJ3i9Tq3f279+g4nv790c=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rT2HF-0003VH-RZ for jfs-discussion@lists.sourceforge.net;
 Thu, 25 Jan 2024 16:08:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 4BB3F62245;
 Thu, 25 Jan 2024 16:08:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42653C433C7;
 Thu, 25 Jan 2024 16:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1706198899;
 bh=ibwxNm2tdnHXTgdD62LX+2MMbAqPlVcGsNKmR8yQGvs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kDTUY5drc5hjRMbTOh/O323rJLLr4aVye9f2Sn/Ngjkq30nERxnlSRPP/eTpNxU1v
 iARp6kC7UVq1/ILFH8zoXHQWlG1iP1cLSLXr0rUH4stxoS46dZckZOf6ob1da6bzE/
 dEyfEmlYNaIMAdiCq1iHd0r7fniTXRFCgavNB2A3nLBMwfLrfYUmvQB2ggn/VLPnrR
 xdCCgzw5k/fQS9/YLzmh2pjoSB5+oo0txn3la/X0C+sMOrDpajDEoO8lVoyaI4xRsS
 CDnRYlWAVfjjXOsXhhpMYUPJf2XPk6CVjz5PbM/NXs1URg5pU8HQLbwzTV/I42UMbc
 Oj376Bril61Ng==
Date: Thu, 25 Jan 2024 17:08:13 +0100
To: syzbot <syzbot+fb337a5ea8454f5f1e3f@syzkaller.appspotmail.com>
Message-ID: <20240125-legten-zugleich-21a988d80b45@brauner>
References: <00000000000083513f060340d472@google.com>
 <000000000000e5e71a060fc3e747@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <000000000000e5e71a060fc3e747@google.com>
X-Spam-Score: -6.7 (------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Jan 25, 2024 at 03:59:03AM -0800, syzbot wrote: >
 syzbot suspects this issue was fixed by commit: > > commit
 6f861765464f43a71462d52026fbddfc858239a5
 > Author: Jan Kara <jack@suse.cz> > Date: [...] 
 Content analysis details:   (-6.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rT2HF-0003VH-RZ
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] INFO: task hung in path_mount
 (2)
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
Cc: axboe@kernel.dk, shaggy@kernel.org, hdanton@sina.com, jack@suse.cz,
 syzkaller-bugs@googlegroups.com, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Thu, Jan 25, 2024 at 03:59:03AM -0800, syzbot wrote:
> syzbot suspects this issue was fixed by commit:
> 
> commit 6f861765464f43a71462d52026fbddfc858239a5
> Author: Jan Kara <jack@suse.cz>
> Date:   Wed Nov 1 17:43:10 2023 +0000
> 
>     fs: Block writes to mounted block devices
> 
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=13175a53e80000
> start commit:   2ccdd1b13c59 Linux 6.5-rc6
> git tree:       upstream
> kernel config:  https://syzkaller.appspot.com/x/.config?x=9c37cc0e4fcc5f8d
> dashboard link: https://syzkaller.appspot.com/bug?extid=fb337a5ea8454f5f1e3f
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=17ba5d53a80000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=14265373a80000
> 
> If the result looks correct, please mark the issue as fixed by replying with:
 
#syz fix: fs: Block writes to mounted block devices


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
