Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D6F1C7BD829
	for <lists+jfs-discussion@lfdr.de>; Mon,  9 Oct 2023 12:09:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qpnBx-0006A4-3s;
	Mon, 09 Oct 2023 10:08:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1qpnBv-00069y-5A
 for jfs-discussion@lists.sourceforge.net;
 Mon, 09 Oct 2023 10:08:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KI8iGmDacbjyfpujQS0BFEqs/bpz2R47Nq98pWnN1Kg=; b=I8TdkGyxuq5PtGibWpo7SXpZaI
 SWUOsatKudzQKsXabph93Hcpo1mCyICdWl7fziXeNlU7j4n4br8rRVhNgiFS9tdJYpBiITaz+CzTt
 LEtHPl8ndeyAwzylXPNpQ3y0feB306R4RC9tOq+NQnNtJsRpxTb6N7SgwcrIxkuIZV6w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KI8iGmDacbjyfpujQS0BFEqs/bpz2R47Nq98pWnN1Kg=; b=GQA2bBEOrlzZ4WPwFShbkORh7D
 pqFFJUrPDpCuhomZScllMqyPJuhaQk4IcaMoOzS+YPPlVpZ6HdaKN/7b3F2QdAQwtTdLWwdvZI5Wy
 NNDynB4RnSIa7BO39Q2Aajj82BTxxUwOog1TexVp1JmzkvVPd8fOpdzQLuJ9vtR0Pxjc=;
Received: from smtp-out1.suse.de ([195.135.220.28])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qpnBj-0003AI-Ep for jfs-discussion@lists.sourceforge.net;
 Mon, 09 Oct 2023 10:08:45 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 18EE421847;
 Mon,  9 Oct 2023 10:08:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1696846106; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=KI8iGmDacbjyfpujQS0BFEqs/bpz2R47Nq98pWnN1Kg=;
 b=kLdsgi8ijKHDs7ueTrlwHESoADuAyKkXPOBTNwBbQdKHrIzCOAZY6lro9s2/pv6+f5QqQg
 +xBHbSs2QyDGx3z+s4/R9INchqMqHlLs0myYWnOwJzZ4GQ1LJSCIELKjXaaRbMcaRpHkku
 1fc1gKrlUleAhXjt3lZ6s/3uq6EyNT8=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1696846106;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=KI8iGmDacbjyfpujQS0BFEqs/bpz2R47Nq98pWnN1Kg=;
 b=Ezey8VTIiHbqUPl9cBkACsMHidTrypgIsvLLrLo1GXWsO+A+pyht3ciFWhBNDIN4wEAUnN
 OQ3sn7AuaxPnIyDg==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 072C313905;
 Mon,  9 Oct 2023 10:08:26 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id 5aG1ARrRI2XpdQAAMHmgww
 (envelope-from <jack@suse.cz>); Mon, 09 Oct 2023 10:08:26 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id 94439A04B2; Mon,  9 Oct 2023 12:08:25 +0200 (CEST)
Date: Mon, 9 Oct 2023 12:08:25 +0200
From: Jan Kara <jack@suse.cz>
To: Lizhi Xu <lizhi.xu@windriver.com>
Message-ID: <20231009100825.dkkaylsrj4db3ekp@quack3>
References: <0000000000005239cf060727d3f6@google.com>
 <20231009094557.1398920-1-lizhi.xu@windriver.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231009094557.1398920-1-lizhi.xu@windriver.com>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon 09-10-23 17:45:57, Lizhi Xu wrote: > When sbi->flag
 is JFS_NOINTEGRITY in lmLogOpen(), log->bdev_handle can't > be inited, so
 it value will be NULL. > Therefore, add the "log ->no_integrity=1" [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.28 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1qpnBj-0003AI-Ep
Subject: Re: [Jfs-discussion] [PATCH] jfs: fix log->bdev_handle null ptr
 deref in lbmStartIO
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
Cc: axboe@kernel.dk, shaggy@kernel.org, brauner@kernel.org, jack@suse.cz,
 johannes.thumshirn@wdc.com, syzkaller-bugs@googlegroups.com,
 syzbot+23bc20037854bb335d59@syzkaller.appspotmail.com,
 linux-kernel@vger.kernel.org, hare@suse.de, linux-fsdevel@vger.kernel.org,
 hch@lst.de, jfs-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Mon 09-10-23 17:45:57, Lizhi Xu wrote:
> When sbi->flag is JFS_NOINTEGRITY in lmLogOpen(), log->bdev_handle can't
> be inited, so it value will be NULL.
> Therefore, add the "log ->no_integrity=1" judgment in lbmStartIO() to avoid such
> problems.
> 
> Reported-and-tested-by: syzbot+23bc20037854bb335d59@syzkaller.appspotmail.com
> Signed-off-by: Lizhi Xu <lizhi.xu@windriver.com>

Ah, good catch. Who would think someone creates bios for NULL bdev only to
release them shortly afterwards ;). Anyway the fix looks good. Feel free to
add:

Reviewed-by: Jan Kara <jack@suse.cz>

Christian, please pick up this fixup into your tree. Thanks!

								Honza

> ---
>  fs/jfs/jfs_logmgr.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/fs/jfs/jfs_logmgr.c b/fs/jfs/jfs_logmgr.c
> index c911d838b8ec..c41a76164f84 100644
> --- a/fs/jfs/jfs_logmgr.c
> +++ b/fs/jfs/jfs_logmgr.c
> @@ -2110,10 +2110,14 @@ static void lbmStartIO(struct lbuf * bp)
>  {
>  	struct bio *bio;
>  	struct jfs_log *log = bp->l_log;
> +	struct block_device *bdev = NULL;
>  
>  	jfs_info("lbmStartIO");
>  
> -	bio = bio_alloc(log->bdev_handle->bdev, 1, REQ_OP_WRITE | REQ_SYNC,
> +	if (!log->no_integrity) 
> +		bdev = log->bdev_handle->bdev;	
> +
> +	bio = bio_alloc(bdev, 1, REQ_OP_WRITE | REQ_SYNC,
>  			GFP_NOFS);
>  	bio->bi_iter.bi_sector = bp->l_blkno << (log->l2bsize - 9);
>  	__bio_add_page(bio, bp->l_page, LOGPSIZE, bp->l_offset);
> -- 
> 2.25.1
> 
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
