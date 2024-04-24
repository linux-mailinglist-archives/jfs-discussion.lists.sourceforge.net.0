Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 282038B115A
	for <lists+jfs-discussion@lfdr.de>; Wed, 24 Apr 2024 19:42:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rzgdC-0000xc-Hx;
	Wed, 24 Apr 2024 17:42:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1rzgdB-0000xW-9p
 for jfs-discussion@lists.sourceforge.net;
 Wed, 24 Apr 2024 17:42:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pmCM4ZRC7PzrjVELSoDq0bCfVQk1Ajd90li1QmbuF7k=; b=DvVdVuima5Y7RZEDiF+GpUbdEz
 9A3gvzk7sndoX0A46CPyi1LGhZxV74VSxDq8SsrdJCtca2bjkPNYFblQ86nEONhbAI4PQPq5IqFLb
 +euKo6WuZHz7swJ8XOBeQlHYgP1y/7mQa/JflfUg8eX9Uo2zE1V7Un149pzl/NBoYjeE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pmCM4ZRC7PzrjVELSoDq0bCfVQk1Ajd90li1QmbuF7k=; b=epUNu1XWHGaHzTxMneWxLI3S2v
 iNRelKh7YoGGLBGkjJhmj+hXRvm9Fs/rVEdkek4b4nI/ZrF3XQN/9MtmkVaNf3jXlyvgLEdzvCBOM
 mjUg1/I7EAPfdrPhIdGm6J70GICv3UmAOu6yOBRuYfN2nuZiyPg3nL18tXUyjza2hFEQ=;
Received: from [90.155.50.34] (helo=casper.infradead.org)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rzgdA-0004vi-EU for jfs-discussion@lists.sourceforge.net;
 Wed, 24 Apr 2024 17:42:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=pmCM4ZRC7PzrjVELSoDq0bCfVQk1Ajd90li1QmbuF7k=; b=BXvT2lFPFXXIPnM1ZCgaoAChvD
 V3MPYe8GJ93zgM21lwvjNW5WR1VIJHFBTUUf+Byf/aMLDLU8aJ1qpjYHUvFcHi7F/FcEzzazN7vHx
 9UzHHNuQH1Xa62cC+4WH+pvcP6DZAsBMCHAJH1J644hj7jJlWZQ4ls66mwWLmu1bkuWdCTMqlPnWp
 R/RRYAtOaKF2lDBA5JqA4hjLwMaPQV91uTnISxd8Zj0pTwhJnMF8oyywLLSvi+QJdhYySQD+pT188
 vv5tju1n4dWVyUkT+KVbgoe996W5VFeQruy13LYEjUXM2onX1t3iN9LJ7NEOmbGpgGknRDhqn/6gz
 OaSAh0Lg==;
Received: from willy by casper.infradead.org with local (Exim 4.97.1 #2 (Red
 Hat Linux)) id 1rzgcu-00000001Mvd-1JxD;
 Wed, 24 Apr 2024 17:41:48 +0000
Date: Wed, 24 Apr 2024 18:41:48 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Jeongjun Park <aha310510@gmail.com>
Message-ID: <ZilEXC3qLiqMTs29@casper.infradead.org>
References: <0000000000000866ea0616cb082c@google.com>
 <20240424172240.148883-1-aha310510@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240424172240.148883-1-aha310510@gmail.com>
X-Spam-Score: -3.9 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Apr 25, 2024 at 02:22:40AM +0900,
 Jeongjun Park wrote:
 > Due to overflow, a value that is too large is entered into the agno > value.
 Therefore, we need to add code to check the agno value. This is clearly wrong.
 Content analysis details:   (-3.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [90.155.50.34 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1rzgdA-0004vi-EU
Subject: Re: [Jfs-discussion] [PATCH] jfs: Fix array-index-out-of-bounds in
 diFree
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
Cc: shaggy@kernel.org, brauner@kernel.org, jlayton@kernel.org, eadavis@qq.com,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 syzkaller-bugs@googlegroups.com, linux-fsdevel@vger.kernel.org,
 syzbot+241c815bda521982cb49@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Thu, Apr 25, 2024 at 02:22:40AM +0900, Jeongjun Park wrote:
> Due to overflow, a value that is too large is entered into the agno 
> value. Therefore, we need to add code to check the agno value.

This is clearly wrong.

#define BLKTOAG(b,sbi)  ((b) >> ((sbi)->bmap->db_agl2size))

I'd suggest that something has either corrupted the sbi->bmap
pointer or the sbi->bmap->db_agl2size value.

All your patch does is cover up the problem, not fix it.

> Reported-by: syzbot+241c815bda521982cb49@syzkaller.appspotmail.com
> Signed-off-by: Jeongjun Park <aha310510@gmail.com>
> ---
>  fs/jfs/jfs_imap.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
> index 2ec35889ad24..0aac083bc0db 100644
> --- a/fs/jfs/jfs_imap.c
> +++ b/fs/jfs/jfs_imap.c
> @@ -881,6 +881,11 @@ int diFree(struct inode *ip)
>  	 */
>  	agno = BLKTOAG(JFS_IP(ip)->agstart, JFS_SBI(ip->i_sb));
>  
> +	if(agno >= MAXAG || agno < 0){
> +		jfs_error(ip->i_sb, "invalid array index (0 <= agno < MAXAG), agno = %d\n", agno);
> +		return -ENOMEM;
> +	}
> +
>  	/* Lock the AG specific inode map information
>  	 */
>  	AG_LOCK(imap, agno);
> -- 
> 2.34.1
> 


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
