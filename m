Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE1434A923
	for <lists+jfs-discussion@lfdr.de>; Fri, 26 Mar 2021 14:57:09 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1lPmxI-0002H3-P0; Fri, 26 Mar 2021 13:56:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <gregkh@linuxfoundation.org>) id 1lPmxH-0002Gm-1f
 for jfs-discussion@lists.sourceforge.net; Fri, 26 Mar 2021 13:56:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fgkRHTLB2RIjhymsCMk3FFFFwwm/Vud7zXblB4BzXuo=; b=JywvWa6p1kS/uwF2GAj+dJo9az
 kz9vQsFRtvIMFAv/chlCRzYJcTxTob3FghVkzk+PLRSyMLxZJwVNQKwLvGuOKLeGsG0nh/KdFoynR
 IwtU7O+duU61rpFUTqhi9NIeATJIVf5GlrXOfMuKvku9OTSS057Kl9GLiT1FdZWrc59E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fgkRHTLB2RIjhymsCMk3FFFFwwm/Vud7zXblB4BzXuo=; b=PKkMdl1x7gFhWx8IsoAy/dGUl+
 YfNtyO96bRIHeWnJaoQqcxCD3Zd/9yipFCGflSIIZIe8G6Z92a62XTFvP3cvj6ewoGc761MxgykKL
 hxgUMwtigUIptLroFqDbBzNBA800P5PBW0EEpx7fJyg2mREYdgsrDLP17ujV0FH3sGiM=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lPmxA-00E5Wh-Mu
 for jfs-discussion@lists.sourceforge.net; Fri, 26 Mar 2021 13:56:50 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4380B619A0;
 Fri, 26 Mar 2021 13:56:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1616766992;
 bh=O7IRWgd00UHT0VyHJxToyfBcxmszCLnq1Pe7Rl41vIM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nHBx1s7kmQhhBdrxT2Z/StHNZaSpQs15JgcY3TEZa9jr0JBap0+i+ekF9XWvPHU5q
 nVaQDuxy0f31kCs8QT/kxdhz1LWCJ/hfhZndhBocLqIGCRbEUkj8nMDOZpPx4w54Eq
 UGwx4xomCwc5VeSGTK8+jgMiPOE7cGiAJ3IadIGM=
Date: Fri, 26 Mar 2021 14:56:30 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Anirudh Rayabharam <mail@anirudhrb.com>
Message-ID: <YF3oDrnN3RJBFQ0P@kroah.com>
References: <20210322161147.5593-1-mail@anirudhrb.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210322161147.5593-1-mail@anirudhrb.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sina.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lPmxA-00E5Wh-Mu
Subject: Re: [Jfs-discussion] [PATCH resend] jfs: fix use-after-free in
 lbmIODone
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
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 syzbot+5d2008bd1f1b722ba94e@syzkaller.appspotmail.com,
 linux-kernel@vger.kernel.org, Hillf Danton <hdanton@sina.com>,
 linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Mon, Mar 22, 2021 at 09:41:47PM +0530, Anirudh Rayabharam wrote:
> Fix use-after-free by waiting for ongoing IO to complete before freeing
> lbufs in lbmLogShutdown. Add a counter in struct jfs_log to keep track
> of the number of in-flight IO operations and a wait queue to wait on for
> the IO operations to complete.
> 
> Reported-by: syzbot+5d2008bd1f1b722ba94e@syzkaller.appspotmail.com
> Suggested-by: Hillf Danton <hdanton@sina.com>
> Signed-off-by: Anirudh Rayabharam <mail@anirudhrb.com>
> ---
>  fs/jfs/jfs_logmgr.c | 17 ++++++++++++++---
>  fs/jfs/jfs_logmgr.h |  2 ++
>  2 files changed, 16 insertions(+), 3 deletions(-)
> 
> diff --git a/fs/jfs/jfs_logmgr.c b/fs/jfs/jfs_logmgr.c
> index 9330eff210e0..82d20c4687aa 100644
> --- a/fs/jfs/jfs_logmgr.c
> +++ b/fs/jfs/jfs_logmgr.c
> @@ -1815,6 +1815,8 @@ static int lbmLogInit(struct jfs_log * log)
>  	 */
>  	init_waitqueue_head(&log->free_wait);
>  
> +	init_waitqueue_head(&log->io_waitq);
> +
>  	log->lbuf_free = NULL;
>  
>  	for (i = 0; i < LOGPAGES;) {
> @@ -1864,6 +1866,7 @@ static void lbmLogShutdown(struct jfs_log * log)
>  	struct lbuf *lbuf;
>  
>  	jfs_info("lbmLogShutdown: log:0x%p", log);
> +	wait_event(log->io_waitq, !atomic_read(&log->io_inflight));
>  
>  	lbuf = log->lbuf_free;
>  	while (lbuf) {
> @@ -1990,6 +1993,8 @@ static int lbmRead(struct jfs_log * log, int pn, struct lbuf ** bpp)
>  	bio->bi_end_io = lbmIODone;
>  	bio->bi_private = bp;
>  	bio->bi_opf = REQ_OP_READ;
> +
> +	atomic_inc(&log->io_inflight);
>  	/*check if journaling to disk has been disabled*/
>  	if (log->no_integrity) {
>  		bio->bi_iter.bi_size = 0;
> @@ -2135,6 +2140,7 @@ static void lbmStartIO(struct lbuf * bp)
>  	bio->bi_private = bp;
>  	bio->bi_opf = REQ_OP_WRITE | REQ_SYNC;
>  
> +	atomic_inc(&log->io_inflight);

Why use an atomic for this?  The value can change after you test for it,
as there's no lock involved.

Do you really need to keep track of all of these "inflight"?  That feels
very "heavy" to me.

jfs developers, any ideas?

thanks,

greg k-h


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
