Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A7F18A44BDD
	for <lists+jfs-discussion@lfdr.de>; Tue, 25 Feb 2025 20:52:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tn0yY-0004am-Eh;
	Tue, 25 Feb 2025 19:52:18 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pchelkin@ispras.ru>) id 1tn0yX-0004ag-Bw
 for jfs-discussion@lists.sourceforge.net;
 Tue, 25 Feb 2025 19:52:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RnyRVlBxxF2Db7vHMzwHnkqqdRWAY2Xsx2UsXn//kvI=; b=Ip3IdVhaKJWzdcIrY112D74RDY
 1eD4PAiFhVfC6lK1Rzyf1xZGEvuKq2Lim0d2TFfavrlAazFvid08dSHUwUOV9E5AFDKwwmpmV8IfN
 BTdAVCPDB+tIZk2/Hg3qhQ8xJkBlvq9y4poxOXQz4fzXLNonZiB7jQe0E6W/UGzX4cgA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RnyRVlBxxF2Db7vHMzwHnkqqdRWAY2Xsx2UsXn//kvI=; b=hN5C3ve80iU8mkD1Ce1Da5a31S
 WVZ8VFf5wMIEHlXMTVMnPr/+tMzrmVWsIg6Eyllbs5mmBktRakHi4b3oBbshgDluGimGxTqCdvBhA
 Rob0waKDKMhnVswegSMOw/2PWFqqLwoBhFpkPjNCh6SO0x7tUYlOHKUK1EzbmHHFWO6A=;
Received: from mail.ispras.ru ([83.149.199.84])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:DHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tn0yT-0008S1-0g for jfs-discussion@lists.sourceforge.net;
 Tue, 25 Feb 2025 19:52:17 +0000
Received: from localhost (unknown [10.10.165.7])
 by mail.ispras.ru (Postfix) with ESMTPSA id 5B08040B2278;
 Tue, 25 Feb 2025 19:52:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.ispras.ru 5B08040B2278
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ispras.ru;
 s=default; t=1740513124;
 bh=RnyRVlBxxF2Db7vHMzwHnkqqdRWAY2Xsx2UsXn//kvI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pGNnBYJDBWtH2SSTXYass+V0GFg2OQ2RDG9Lq5tCNjl2QfytPJ4zy+dLkuUOtLaem
 DOg57L888w9yvJ0nZOrWDaGUmKjJ5FZzVIfrWpk/aOgDx54fRHYS54EbwasF6/uiDv
 tATru1BKg9RRXUY9iCtn8P1n5HsFxr8ZHldrPNzg=
Date: Tue, 25 Feb 2025 22:52:04 +0300
To: Rand Deeb <rand.sec96@gmail.com>
Message-ID: <yogb3soaqqg5vnon6ogryhdmmatrvrc2xwlh2exwlhyf6gnfw7@7tybsy2s52qb>
References: <20250225114110.1775745-1-rand.sec96@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250225114110.1775745-1-rand.sec96@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 25. Feb 14:41,
 Rand Deeb wrote: > In dbMapFileSizeToMapSize(), 
 the calculation involving 'complete' and > 'LPERCTL' can result in a 32-bit
 integer overflow when handling large > filesystems. S [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [83.149.199.84 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [83.149.199.84 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1tn0yT-0008S1-0g
Subject: Re: [Jfs-discussion] [PATCH] fs/jfs: prevent potential integer
 overflow in dbMapFileSizeToMapSize
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
From: Fedor Pchelkin via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Fedor Pchelkin <pchelkin@ispras.ru>
Cc: voskresenski.stanislav@confident.ru, Dave Kleikamp <shaggy@kernel.org>,
 jfs-discussion@lists.sourceforge.net, lvc-project@linuxtesting.org,
 linux-kernel@vger.kernel.org, deeb.rand@confident.ru
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Tue, 25. Feb 14:41, Rand Deeb wrote:
> In dbMapFileSizeToMapSize(), the calculation involving 'complete' and
> 'LPERCTL' can result in a 32-bit integer overflow when handling large
> filesystems. Specifically, multiplying 'complete' by LPERCTL * LPERCTL
> (1,048,576) can exceed the 32-bit integer limit if 'complete' is greater
> than approximately 2,047.
> 
> While there is no evidence that 'complete' can exceed this threshold,
> theoretically, this is possible. To ensure robustness and maintainability,
> this patch casts only 'complete' to s64 (64-bit integer) before performing
> the multiplication. This guarantees that the arithmetic is conducted in
> 64-bit space, accommodating larger values without overflow.
> 
> This change enhances the reliability of the JFS filesystem when managing
> large volumes and preemptively addresses potential overflow issues.
> 
> Found by Linux Verification Center (linuxtesting.org) with SVACE.
> 
> Signed-off-by: Rand Deeb <rand.sec96@gmail.com>
> ---
>  fs/jfs/jfs_dmap.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
> index edb22cf9521a..380e73c516ee 100644
> --- a/fs/jfs/jfs_dmap.c
> +++ b/fs/jfs/jfs_dmap.c
> @@ -4059,7 +4059,7 @@ s64 dbMapFileSizeToMapSize(struct inode * ipbmap)
>  		factor =
>  		    (i == 2) ? MAXL1PAGES : ((i == 1) ? MAXL0PAGES : 1);
>  		complete = (u32) npages / factor;

Can it really overflow the 32bit arithmetic considering how 'factor' and
'complete' values are calculated above?

/*
 * maximum number of map pages at each level including control pages
 */
#define MAXL0PAGES	(1 + LPERCTL)
#define MAXL1PAGES	(1 + LPERCTL * MAXL0PAGES)

> -		ndmaps += complete * ((i == 2) ? LPERCTL * LPERCTL :
> +		ndmaps += (s64)complete * ((i == 2) ? LPERCTL * LPERCTL :
>  				      ((i == 1) ? LPERCTL : 1));
>  
>  		/* pages in last/incomplete child */
> -- 
> 2.34.1


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
