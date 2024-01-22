Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 70431836E54
	for <lists+jfs-discussion@lfdr.de>; Mon, 22 Jan 2024 18:50:30 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rRyR2-00063N-0C;
	Mon, 22 Jan 2024 17:50:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <gregkh@linuxfoundation.org>) id 1rRyR0-00063H-7f
 for jfs-discussion@lists.sourceforge.net;
 Mon, 22 Jan 2024 17:50:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Da9Fs/lqI2OfR4O/4bRD9RFV5tKs40vkzHFMbFuc0qo=; b=HhKQU7XFTmqqSIrWWOi+Uav+8K
 RE0ZT7hwzA1Ch6vr5FfUS8mEYPKYgxpDSGilezRlvg75YrCICkLrhCoW5iNoanzdV3gsSBBnWpL4t
 UJi8rv/B/IGdFzcKFuhg4atz25qDq95ZY+DdcLUJ8pJ7sPB27WMkX9g60sSlXLD+xkcc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Da9Fs/lqI2OfR4O/4bRD9RFV5tKs40vkzHFMbFuc0qo=; b=ZNdwEMcFFVoReQBuGkarZ0jY8o
 r5GWP+g4hM++1HoiijMPrNI2o93TT90ng4blPUBv2QnFm3K5Ye2IvyxSlRido+qmn8gaEJuq8tabR
 Klx5nLt9BmXgfNyLaw121kxAwZd3FAz3OApjmiGGFhsNdSxkrbHee0RnS/lKOBBhnCkY=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rRyQy-0006v6-S2 for jfs-discussion@lists.sourceforge.net;
 Mon, 22 Jan 2024 17:50:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 82F63CE118B;
 Mon, 22 Jan 2024 17:50:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 843A6C43390;
 Mon, 22 Jan 2024 17:50:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1705945801;
 bh=pgKN2vv5aFY3btJxTALCeAZ5ln5MmVsdnMseQghfUgc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HH+dQZ32/Fwo22hkYcnlnDzXAieLU75LlWJRVNwLLnS3/YiSKLI4G/SjA1Y+JJMTm
 +Z6oqS6ZdmhsStTDWksVOSgIGqfCACw3y9vPRgUkHEZW/2Sdnfmq4elH06fMCO1ja3
 LmvPPRkYdOcqqDiyCC6qsg5we3UuQRuNXXuvmyFo=
Date: Mon, 22 Jan 2024 09:50:00 -0800
To: Mikhail Ukhin <mish.uxin2012@yandex.ru>
Message-ID: <2024012246-passable-delegate-5528@gregkh>
References: <20240112165007.4764-1-mish.uxin2012@yandex.ru>
 <2024011216-rubdown-buddhist-6d1e@gregkh>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2024011216-rubdown-buddhist-6d1e@gregkh>
X-Spam-Score: -3.8 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Jan 12, 2024 at 08:31:30PM +0100, Greg Kroah-Hartman
 wrote: > On Fri, Jan 12, 2024 at 07:50:07PM +0300, Mikhail Ukhin wrote: >
 > Fuzzing of 5.10 stable branch shows NULL pointer dereference ha [...] 
 Content analysis details:   (-3.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [145.40.73.55 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rRyQy-0006v6-S2
Subject: Re: [Jfs-discussion] [PATCH 5.10/5.15] jfs: add check if log->bdev
 is NULL in lbmStartIO()
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
From: Greg Kroah-Hartman via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Jens Axboe <axboe@kernel.dk>, Dave Kleikamp <shaggy@kernel.org>,
 Christian Brauner <brauner@kernel.org>, Jan Kara <jack@suse.cz>,
 lvc-project@linuxtesting.org, Pavel Koshutin <koshutin.pavel@yandex.ru>,
 jfs-discussion@lists.sourceforge.net, stable@vger.kernel.org,
 linux-kernel@vger.kernel.org, Artem Sadovnikov <ancowi69@gmail.com>,
 Mikhail Ivanov <iwanov-23@bk.ru>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Fri, Jan 12, 2024 at 08:31:30PM +0100, Greg Kroah-Hartman wrote:
> On Fri, Jan 12, 2024 at 07:50:07PM +0300, Mikhail Ukhin wrote:
> > Fuzzing of 5.10 stable branch shows NULL pointer dereference happens in 
> > lbmStartIO() on log->bdev pointer. The reason for bdev being NULL is the 
> > JFS_NOINTEGRITY flag is set on mount of this fs. When this flag is enabled,
> > it results in the open_dummy_log function being called, which initializes a
> > new dummy_log, but does not assign a value to bdev.
> > 
> > The error is fixed in 5.18 by commit
> > 07888c665b405b1cd3577ddebfeb74f4717a84c4.
> > Backport of this commit is too intrusive, so it is more reasonable to apply
> > a small patch to fix this issue.
> > 
> > Found by Linux Verification Center (linuxtesting.org) with syzkaller.
> > 
> > Signed-off-by: Mikhail Ukhin <mish.uxin2012@yandex.ru>
> > Signed-off-by: Mikhail Ivanov <iwanov-23@bk.ru>
> > Signed-off-by: Pavel Koshutin <koshutin.pavel@yandex.ru>
> > Signed-off-by: Artem Sadovnikov <ancowi69@gmail.com>
> > ---
> >  fs/jfs/jfs_logmgr.c | 6 ++++--
> >  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> Who is using jfs in 5.10 and 5.15?  Why not just mark the filesystem as
> BROKEN there instead?  If you need to access your ancient filesystem
> image just use a newer kernel.
> 
> For filesystems that are not used in older kernels, work like this feels
> odd, especially for something just like a NULL dereference which doesn't
> do much, right?

Now dropped from my review queue due to lack of response...


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
