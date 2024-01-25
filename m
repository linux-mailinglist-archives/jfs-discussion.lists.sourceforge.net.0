Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 37B1783C8D4
	for <lists+jfs-discussion@lfdr.de>; Thu, 25 Jan 2024 17:55:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rT30r-000289-Pd;
	Thu, 25 Jan 2024 16:55:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1rT30q-000283-IC
 for jfs-discussion@lists.sourceforge.net;
 Thu, 25 Jan 2024 16:55:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VSYrARtztMQ5QyA5O83DKp4hb9mYKZbzbubozk4O0YI=; b=RxAGxnaYbQKBxvX0p44Ntbr+1y
 Ge3khwmKUZoHHtc1pfWvq8dCEDoogkK8aGwyy1xW2eUZTGM9QPspwlVEbtyhydt6jgfjpSHLypGQU
 xJTrTuJ5kh+cSUUmH5uSLdbo8BF+PohXTnPl9322t1ZuxxsqX0WNR0ZQEjxL2X24uI5M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VSYrARtztMQ5QyA5O83DKp4hb9mYKZbzbubozk4O0YI=; b=cgRHLJnBPwbYReMY+dgy1fErqk
 hJYxm0o72f6TRDBRpckL8+iIQHtIoJtaWXAE616iA5wYj1FNMNHqipqBYVFF56BiVivlX3TiidJcx
 DMZR6BfyvkcMbMqiy4hKEggggMKAgwXGrLk7kEdtL8r7ERuCHHCKSjfcbRgzKdNqzG5I=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rT30o-00067F-Lf for jfs-discussion@lists.sourceforge.net;
 Thu, 25 Jan 2024 16:55:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 903B5CE343C;
 Thu, 25 Jan 2024 16:55:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 63A27C433F1;
 Thu, 25 Jan 2024 16:55:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1706201722;
 bh=pzjRcCGvrsjo3wuH+LeThDxqSyRY109U181HGTQgYHI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=j2Jv9J93Su2HLrEG9Sx7oSAjZoSHRJ5+MYJbKCVavuZK+VZUD5YkUmCy6h6DsKfZL
 5W4qHcJQBvcVA6WE1wFIH1mmGWjfkGAcz8SovM15ACUcODxk4wlLi+cq644voaGZbz
 p/ZwhcO4z6syo2SDD+gB/uVcTpr2g2FY6T5ylpUkdVINS7km6+1KRt1C23hulVWVai
 wTRFAzMIrgGHuGMaM/o2MIo6YrEnwDu5fnQVh7tLCFTP6OcV7IrDP60d4AF8zS87FV
 3M89bQUVnb2hE1KHhCw5w6g2RGdV9/7I0nodOe7c4VMlzWEVcsVsfwfrBxwAylo/FJ
 VNfn8o+eOM/+A==
Date: Thu, 25 Jan 2024 17:55:17 +0100
To: Jens Axboe <axboe@kernel.dk>
Message-ID: <20240125-erwehren-wandbild-05bf05ac9122@brauner>
References: <00000000000083513f060340d472@google.com>
 <000000000000e5e71a060fc3e747@google.com>
 <20240125-legten-zugleich-21a988d80b45@brauner>
 <11868eb4-0528-4298-b8bc-2621fd1aac83@kernel.dk>
 <20240125-addition-audienz-c955ab3c8435@brauner>
 <e0a1fcc8-40ce-4c96-bba5-95a9641cb076@kernel.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e0a1fcc8-40ce-4c96-bba5-95a9641cb076@kernel.dk>
X-Spam-Score: -1.5 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Jan 25, 2024 at 09:51:43AM -0700, Jens Axboe wrote:
 > On 1/25/24 9:47 AM, Christian Brauner wrote: > > On Thu, Jan 25, 2024 at
 09:11:34AM -0700, Jens Axboe wrote: > >> On Thu, Jan 25, 2024 at [...] 
 Content analysis details:   (-1.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [145.40.73.55 listed in list.dnswl.org]
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rT30o-00067F-Lf
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

On Thu, Jan 25, 2024 at 09:51:43AM -0700, Jens Axboe wrote:
> On 1/25/24 9:47 AM, Christian Brauner wrote:
> > On Thu, Jan 25, 2024 at 09:11:34AM -0700, Jens Axboe wrote:
> >> On Thu, Jan 25, 2024 at 9:08?AM Christian Brauner <brauner@kernel.org> wrote:
> >>>
> >>> On Thu, Jan 25, 2024 at 03:59:03AM -0800, syzbot wrote:
> >>>> syzbot suspects this issue was fixed by commit:
> >>>>
> >>>> commit 6f861765464f43a71462d52026fbddfc858239a5
> >>>> Author: Jan Kara <jack@suse.cz>
> >>>> Date:   Wed Nov 1 17:43:10 2023 +0000
> >>>>
> >>>>     fs: Block writes to mounted block devices
> >>>>
> >>>> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=13175a53e80000
> >>>> start commit:   2ccdd1b13c59 Linux 6.5-rc6
> >>>> git tree:       upstream
> >>>> kernel config:  https://syzkaller.appspot.com/x/.config?x=9c37cc0e4fcc5f8d
> >>>> dashboard link: https://syzkaller.appspot.com/bug?extid=fb337a5ea8454f5f1e3f
> >>>> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=17ba5d53a80000
> >>>> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=14265373a80000
> >>>>
> >>>> If the result looks correct, please mark the issue as fixed by replying with:
> >>>
> >>> #syz fix: fs: Block writes to mounted block devices
> >>
> >> Like Dave replied a few days ago, I'm kind of skeptical on all of these
> >> bugs being closed by this change. I'm guessing that they are all
> >> resolved now because a) the block writes while mounted option was set to
> >> Y, and b) the actual bug is just masked by that.
> >>
> >> Maybe this is fine, but it does seem a bit... sketchy? The bugs aren't
> >> really fixed, and what happens if someone doesn't turn on that option?
> >> If it's required, perhaps it should not be an option at all? Though
> >> that'd seem to be likely to break some funky use cases, whether they are
> >> valid or not.
> > 
> > We have no way of actually testing or verifying this stuff and a lot of
> > these have been around for a long time. For example, this report here
> > has a C reproducer but following the actual dashboard link that
> > reproducer is striked-through which supposedly means that it isn't valid
> > or reliable. And no other reproducer ever showed up.
> > 
> > As far as I can see we should just close reports such as. If this is a
> > real bug that is separate from the ability to mount to writed block
> > devices then one should hope that syzbot finds another reproducer that
> > let's us really analyze the bug?
> > 
> > A separate issue is that syzbot keeps suggesting as all of these being
> > closable because of this. So how serious can we take this and how much
> > time can/should we spend given that we got ~20 or more of these mails in
> > the last two weeks or so.
> > 
> > I have no better answers than this tbh. And fwiw, apart from this one I
> > haven't closed a single bug based on this.
> 
> Oh yeah, it wasn't directed at you specifically, just the overall class
> of bugs that get closed due to this in general.
> 
> > And yes, ideally the ability to write to mounted block devices should be
> > turned off. But we'll have to let it trickle into the individual
> > distributions first and make remaining userspace tools that rely on this
> > move to alternate apis before we can make any serious effort.
> 
> Hopefully it's all fine on the distro front and we can just make it the
> default some years from now. May even make sense to backport some of
> this to stable and get it in their hands faster?

Yes, I agree that this would be good.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
