Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 61E9282DB13
	for <lists+jfs-discussion@lfdr.de>; Mon, 15 Jan 2024 15:13:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rPNho-0004OP-Mw;
	Mon, 15 Jan 2024 14:12:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1rPNhm-0004OJ-Rx
 for jfs-discussion@lists.sourceforge.net;
 Mon, 15 Jan 2024 14:12:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vyQevCOfsyzSF0ZWjpeyXmoJbTHv7kp0RkATdjguwWg=; b=gg9oChwer3KBJCUz6T4Go/Gb7F
 Uwz39Qc6+1k1ci82BdlhtFekFC2stnpC7MruafSS8WLlWg7+FQ9ZiLczxyg26fd4lvAZ1K8rY1pvP
 Z5xyyOnfe5Jk22aMzhx1eMpb9J0YR/t0sNNkrOk9WQCIVeRfi7qy0fI5KAkUk78/huV4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vyQevCOfsyzSF0ZWjpeyXmoJbTHv7kp0RkATdjguwWg=; b=H2+11K/YwQXoHOkd5Dk+cjiV2k
 pKhBf5rHXRj9DlQFhUbQlf5eWQzRGqORgG+h+OPdQ92JX68c9qXYWXnGFM8VrGIbEykqKUuKMYgG1
 Dnd6srrjdhNusl/blzuie7LoNF1ZDMbvnFL6vWG4sD5arH6oVL774stIcixY8+IQeKwc=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rPNhi-0003eW-Jx for jfs-discussion@lists.sourceforge.net;
 Mon, 15 Jan 2024 14:12:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 6B259CE0A1D;
 Mon, 15 Jan 2024 14:12:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A126C433F1;
 Mon, 15 Jan 2024 14:12:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1705327940;
 bh=JbRfada1ZmZnmm6CZ+M7STR4Yo8HtupiOREDSHz7wfY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HoQAIQnVUrkaieCvjTqA44x3KvYr/1+26gtV9OXVs6aqezSuLVzDMRr4m2AyuoXKl
 4ZlwqAvYlbjO38tyopBFwqXgFyLd92sbZJILkgfD2E5pTDguVkq2T1bIuLi+9q9yNf
 QN2ZZkFJYzX0B+LV7B/CkfYeqoqTYKIiAAsElb9Vo1QpZeNyZ1SFXMIZyqYbfivbZi
 fLloKPQw6bk7WRQnRtSwXTMCnQV7K6cAWaQtdeRREJ/E0yMo2KSazE3ZFy35cR7yX9
 VyabkGwmxhiG03YISB2lU3myvEAbrSsXzn1w5BpbJUBU5uK4ovVGyOp4cbegIcOcaf
 HuR/UZRA095UQ==
Date: Mon, 15 Jan 2024 15:12:14 +0100
To: Jan Kara <jack@suse.cz>
Message-ID: <20240115-zielvereinbarungen-paarweise-89df1e25c894@brauner>
References: <00000000000027993305eb841df8@google.com>
 <000000000000c746f0060ee2b23a@google.com>
 <20240115134228.vk73b4lkk7lxkgyr@quack3>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240115134228.vk73b4lkk7lxkgyr@quack3>
X-Spam-Score: -4.0 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Jan 15, 2024 at 02:42:28PM +0100, Jan Kara wrote:
 > On Sat 13-01-24 23:18:05, syzbot wrote: > > syzbot suspects this issue was
 fixed by commit: > > > > commit 6f861765464f43a71462d52026fbddfc8 [...] 
 Content analysis details:   (-4.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [145.40.73.55 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rPNhi-0003eW-Jx
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] UBSAN:
 array-index-out-of-bounds in diWrite
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
Cc: axboe@kernel.dk, shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 syzbot <syzbot+c1056fdfe414463fdb33@syzkaller.appspotmail.com>,
 ghandatmanas@gmail.com, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org, syzkaller@googlegroups.com,
 linux-fsdevel@vger.kernel.org, linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Mon, Jan 15, 2024 at 02:42:28PM +0100, Jan Kara wrote:
> On Sat 13-01-24 23:18:05, syzbot wrote:
> > syzbot suspects this issue was fixed by commit:
> > 
> > commit 6f861765464f43a71462d52026fbddfc858239a5
> > Author: Jan Kara <jack@suse.cz>
> > Date:   Wed Nov 1 17:43:10 2023 +0000
> > 
> >     fs: Block writes to mounted block devices
> > 
> > bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=17ec162be80000
> > start commit:   493ffd6605b2 Merge tag 'ucount-rlimits-cleanups-for-v5.19'..
> > git tree:       upstream
> > kernel config:  https://syzkaller.appspot.com/x/.config?x=d19f5d16783f901
> > dashboard link: https://syzkaller.appspot.com/bug?extid=c1056fdfe414463fdb33
> > syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=12f431d2880000
> > C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1208894a880000
> > 
> > If the result looks correct, please mark the issue as fixed by replying with:
> 
> Makes sense:
> 
> #syz fix: fs: Block writes to mounted block devices

I love how many things this closes. This is awesome!


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
