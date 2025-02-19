Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 69D47A3C239
	for <lists+jfs-discussion@lfdr.de>; Wed, 19 Feb 2025 15:34:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tkl8r-0003bt-MZ;
	Wed, 19 Feb 2025 14:33:37 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pchelkin@ispras.ru>) id 1tkhno-0003OX-T7
 for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Feb 2025 10:59:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+I4/wTQwhMvH3uad7QmIZ+rCsdOWbseIIzswhmNndQ4=; b=NcCo1vJcbn32xECGjVTbHaSEIx
 y8zGt42IqFhgvIqE4QmlVKer+vfPRf037ZHT6Wi04jXox3rIyy8dVJYzH8PvKLKEYdUOMEAkCUH6F
 PsdYZmHDlD48Ffz6Gk5RqZxMrYCT+QnEmJRxVbF2WFqFV8gDeLZSu+UvBMbQIT64qx5U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+I4/wTQwhMvH3uad7QmIZ+rCsdOWbseIIzswhmNndQ4=; b=RPOqQRBJ8u2q7C5+TIz+Vu0Rhy
 dE0HGCLNiIgReni+n0Cbvo9FIUELjYYOGA/tS0cFs7TMyLdVf3PgrQ7djTRtaLkvKVGj2/A6lVy8f
 ANaIVH9AbhMAbttBCfE99ONcmGoSPW0tdlDedE51TGNKYf0nD2c+h7M8ptK4R+16P/Q4=;
Received: from mail.ispras.ru ([83.149.199.84])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:DHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tkhnn-00085l-Gm for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Feb 2025 10:59:40 +0000
Received: from localhost (unknown [10.10.165.7])
 by mail.ispras.ru (Postfix) with ESMTPSA id 5ACA440CE188;
 Wed, 19 Feb 2025 10:43:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.ispras.ru 5ACA440CE188
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ispras.ru;
 s=default; t=1739961790;
 bh=+I4/wTQwhMvH3uad7QmIZ+rCsdOWbseIIzswhmNndQ4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CIF+V4ib9b+RZaVRVLXnqWCDidZeNOyUqZVo+xbJe5hQZ2MPiBZAcsAz3E98bVL2x
 OjxAatttv05fo3NxMBoCw0NVDTrv5fkkZCGAiVZMz6+0aMBqAt17161UZcGVEWHZJj
 WqQFPo7HzkShlYYod2y4nXJlCsev5JXjAHHTww7I=
Date: Wed, 19 Feb 2025 13:43:10 +0300
To: Rand Deeb <rand.sec96@gmail.com>
Message-ID: <dmsdrpn5c5x3aqsgjiapqem4akvof2jezgyj4liqkeveo2cect@lb4s4krxfhtm>
References: <20250218124428.1638816-1-rand.sec96@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250218124428.1638816-1-rand.sec96@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 18. Feb 15:44, Rand Deeb wrote: > The JFS filesystem
 calculates allocation group (AG) size using 1 << > l2agsize in dbExtendFS().
 When l2agsize exceeds 31 (possible with >2TB > aggregates on 3 [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [83.149.199.84 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [83.149.199.84 listed in sa-trusted.bondedsender.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1tkhnn-00085l-Gm
X-Mailman-Approved-At: Wed, 19 Feb 2025 14:33:34 +0000
Subject: Re: [Jfs-discussion] [PATCH 5.10.y] fs/jfs: Prevent integer
 overflow in AG size calculation
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

On Tue, 18. Feb 15:44, Rand Deeb wrote:
> The JFS filesystem calculates allocation group (AG) size using 1 << 
> l2agsize in dbExtendFS(). When l2agsize exceeds 31 (possible with >2TB 
> aggregates on 32-bit systems), this 32-bit shift operation causes undefined
> behavior and improper AG sizing.
> 
> On 32-bit architectures:
> - Left-shifting 1 by 32+ bits results in 0 due to integer overflow
> - This creates invalid AG sizes (0 or garbage values) in 
> sbi->bmap->db_agsize
> - Subsequent block allocations would reference invalid AG structures
> - Could lead to: 
>   - Filesystem corruption during extend operations
>   - Kernel crashes due to invalid memory accesses
>   - Security vulnerabilities via malformed on-disk structures
> 
> Fix by casting to s64 before shifting:
> bmp->db_agsize = (s64)1 << l2agsize;
> 
> This ensures 64-bit arithmetic even on 32-bit architectures. The cast 
> matches the data type of db_agsize (s64) and follows similar patterns in 
> JFS block calculation code.
> 
> Found by Linux Verification Center (linuxtesting.org) with SVACE.
> 
> Signed-off-by: Rand Deeb <rand.sec96@gmail.com>
> ---

Same here. The patch is supposed to address the issue in the mainline
first.. What is the reason for '5.10.y' in the subject?

>  fs/jfs/jfs_dmap.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
> index ef220709c7f5..eedea23d70ff 100644
> --- a/fs/jfs/jfs_dmap.c
> +++ b/fs/jfs/jfs_dmap.c
> @@ -3465,7 +3465,7 @@ int dbExtendFS(struct inode *ipbmap, s64 blkno,	s64 nblocks)
>  	oldl2agsize = bmp->db_agl2size;
>  
>  	bmp->db_agl2size = l2agsize;
> -	bmp->db_agsize = 1 << l2agsize;
> +	bmp->db_agsize = (s64)1 << l2agsize;
>  
>  	/* compute new number of AG */
>  	agno = bmp->db_numag;
> -- 
> 2.34.1


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
