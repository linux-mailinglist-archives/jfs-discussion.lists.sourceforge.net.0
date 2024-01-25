Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EDA1783C886
	for <lists+jfs-discussion@lfdr.de>; Thu, 25 Jan 2024 17:47:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rT2t8-0004Qo-SK;
	Thu, 25 Jan 2024 16:47:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1rT2t6-0004QZ-VX
 for jfs-discussion@lists.sourceforge.net;
 Thu, 25 Jan 2024 16:47:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qyX1febFDXO7pYOyiGArVSHBwMsN7VN3FlMuItGj7BQ=; b=Wjxwn0yIHSzMkss4boi8E/G95g
 E5rWznpoLp1zJ5IowCfz3kfq1SWHgSIzWB/BBPK3tDVy15y1lv0xvMuGyqY5rXMjr5bBhUT2lIfKF
 YB/HNsSFSr1lbNVmWWEbl2SNUypbOVpoPguegRsEy0G0fQrUSoUWd9WExTa+zMrZCi30=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qyX1febFDXO7pYOyiGArVSHBwMsN7VN3FlMuItGj7BQ=; b=N8gQX8Bgad4CeJ2dDB9+WHhBWl
 4iF17F4lRrFxNRizGathGpOzPScveid6Zfh4xkCmoFhUTbf90fTRB+aGjmIlTGfBZq5cIbBoNdpbp
 oES13VYKu6gbP5e3sYZqnlFc1yG3A904UopRIrm585rmDTI1vgq35zYYxaa9ShVpaYTA=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rT2t6-0005kp-1d for jfs-discussion@lists.sourceforge.net;
 Thu, 25 Jan 2024 16:47:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 5065F6225C;
 Thu, 25 Jan 2024 16:47:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C0E2C41612;
 Thu, 25 Jan 2024 16:47:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1706201246;
 bh=YftANLU4vv1DKrmQ7rhoS3AB+ju9sPZ5HuQVKVso5tk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=s6rmiGnGS3StI/AkZtPr7HFJDisYiAw9Es1vYshMTNs8s4kf3gomFnnXQ3nSe//yE
 RPNgoSfEXQ+UTTvwIbRAR0afzOQLAWiJ5F7IGkQH0Rv/lKVFWnNbYJrQ+Drm35xfjW
 RjIoR/G0z3fpYqNmxKNdjSLBnV0+2Mo0lLGQxrOLdifjO1v5NLPgEpeDoMZ/3IMuFC
 WnU5u+GMRTgLReWdPjFyVO/Ri/dml7/68I+Y8qVLP+PcVyGfaOIB5NPpgv65eY5gIu
 oXN9+Ulnp+z1A0HXllKlrwjGwi2mYH9V+nZAw2tFVZc6lnuMqbzJzn1ouG6WLR2iMb
 9QOBBhaOKYvOw==
Date: Thu, 25 Jan 2024 17:47:19 +0100
To: Jens Axboe <axboe@kernel.dk>
Message-ID: <20240125-addition-audienz-c955ab3c8435@brauner>
References: <00000000000083513f060340d472@google.com>
 <000000000000e5e71a060fc3e747@google.com>
 <20240125-legten-zugleich-21a988d80b45@brauner>
 <11868eb4-0528-4298-b8bc-2621fd1aac83@kernel.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <11868eb4-0528-4298-b8bc-2621fd1aac83@kernel.dk>
X-Spam-Score: -4.2 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Jan 25, 2024 at 09:11:34AM -0700, Jens Axboe wrote:
 > On Thu, Jan 25, 2024 at 9:08?AM Christian Brauner <brauner@kernel.org>
 wrote: > > > > On Thu, Jan 25, 2024 at 03:59:03AM -0800, syzbot wro [...] 
 Content analysis details:   (-4.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rT2t6-0005kp-1d
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
Cc: shaggy@kernel.org, hdanton@sina.com, jack@suse.cz,
 syzkaller-bugs@googlegroups.com,
 syzbot <syzbot+fb337a5ea8454f5f1e3f@syzkaller.appspotmail.com>,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 jfs-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Thu, Jan 25, 2024 at 09:11:34AM -0700, Jens Axboe wrote:
> On Thu, Jan 25, 2024 at 9:08?AM Christian Brauner <brauner@kernel.org> wrote:
> >
> > On Thu, Jan 25, 2024 at 03:59:03AM -0800, syzbot wrote:
> > > syzbot suspects this issue was fixed by commit:
> > >
> > > commit 6f861765464f43a71462d52026fbddfc858239a5
> > > Author: Jan Kara <jack@suse.cz>
> > > Date:   Wed Nov 1 17:43:10 2023 +0000
> > >
> > >     fs: Block writes to mounted block devices
> > >
> > > bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=13175a53e80000
> > > start commit:   2ccdd1b13c59 Linux 6.5-rc6
> > > git tree:       upstream
> > > kernel config:  https://syzkaller.appspot.com/x/.config?x=9c37cc0e4fcc5f8d
> > > dashboard link: https://syzkaller.appspot.com/bug?extid=fb337a5ea8454f5f1e3f
> > > syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=17ba5d53a80000
> > > C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=14265373a80000
> > >
> > > If the result looks correct, please mark the issue as fixed by replying with:
> >
> > #syz fix: fs: Block writes to mounted block devices
> 
> Like Dave replied a few days ago, I'm kind of skeptical on all of these
> bugs being closed by this change. I'm guessing that they are all
> resolved now because a) the block writes while mounted option was set to
> Y, and b) the actual bug is just masked by that.
> 
> Maybe this is fine, but it does seem a bit... sketchy? The bugs aren't
> really fixed, and what happens if someone doesn't turn on that option?
> If it's required, perhaps it should not be an option at all? Though
> that'd seem to be likely to break some funky use cases, whether they are
> valid or not.

We have no way of actually testing or verifying this stuff and a lot of
these have been around for a long time. For example, this report here
has a C reproducer but following the actual dashboard link that
reproducer is striked-through which supposedly means that it isn't valid
or reliable. And no other reproducer ever showed up.

As far as I can see we should just close reports such as. If this is a
real bug that is separate from the ability to mount to writed block
devices then one should hope that syzbot finds another reproducer that
let's us really analyze the bug?

A separate issue is that syzbot keeps suggesting as all of these being
closable because of this. So how serious can we take this and how much
time can/should we spend given that we got ~20 or more of these mails in
the last two weeks or so.

I have no better answers than this tbh. And fwiw, apart from this one I
haven't closed a single bug based on this.

And yes, ideally the ability to write to mounted block devices should be
turned off. But we'll have to let it trickle into the individual
distributions first and make remaining userspace tools that rely on this
move to alternate apis before we can make any serious effort.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
