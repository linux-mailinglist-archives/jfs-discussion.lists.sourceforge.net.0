Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B2DBEA3C23A
	for <lists+jfs-discussion@lfdr.de>; Wed, 19 Feb 2025 15:34:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tkl8r-0003bn-D5;
	Wed, 19 Feb 2025 14:33:37 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pchelkin@ispras.ru>) id 1tkhiy-0002vO-Ek
 for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Feb 2025 10:54:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zjgeQsz7/p1g7niY9RKs+VeS1ek73XCgN0EtVLw+AO4=; b=BMc0tShzWnVf691CZ/hXfFVxPI
 V6Ax8Cbga/u94WNdLi50lU1d5q3IfKHXjCGzNYZv8MRkqHv8PGfuUtUNqbOLXUP44j3uVwlTOLaHj
 deC2019jCrquJfUNO6LaXER9hM97gokmu2p9qg9THoxV+iv/RRuS5m5TWPQMx1OHLfoc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zjgeQsz7/p1g7niY9RKs+VeS1ek73XCgN0EtVLw+AO4=; b=KICYQTPH4EDTVGJzlcvVjY+nem
 dHcbRIS5xXcd6mM0a/ESy1eLOK064hkYU/32D3Ne+pFK4FnsDRgDWlGVGguDzO2sEd1eD0Cp9tm6Q
 Ou8yF95EL3JixU4B/gF8wzSauCL3odEfVGWmZuD41bepINHnnmq/FZGSEdk65A4calrY=;
Received: from mail.ispras.ru ([83.149.199.84])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:DHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tkhix-0007rI-Kx for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Feb 2025 10:54:41 +0000
Received: from localhost (unknown [10.10.165.7])
 by mail.ispras.ru (Postfix) with ESMTPSA id DA89B40777D3;
 Wed, 19 Feb 2025 10:38:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.ispras.ru DA89B40777D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ispras.ru;
 s=default; t=1739961529;
 bh=zjgeQsz7/p1g7niY9RKs+VeS1ek73XCgN0EtVLw+AO4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CUNKKQZkNxRoniJFILfsEOusbi2eYxqB5sXZ6JlcrGjei/hq94Ynrixuefq+uWIJl
 7/tRfChbMvReUEiGEM0HPm0/D8H5HQA6wYKTQOhLIHY4CKYZtlM/N0MNcP6Yp4u13g
 hlsdED+MQQamzpWFaoa8GOAJqwud4EW+g4ej+ucI=
Date: Wed, 19 Feb 2025 13:38:49 +0300
To: Rand Deeb <rand.sec96@gmail.com>
Message-ID: <v3rsldvzq4ujgcxamjwcmmfm62wgdgjscg25c6t6xph3itjedp@sbuayguprw2i>
References: <20250219072504.1655151-1-rand.sec96@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250219072504.1655151-1-rand.sec96@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Wed, 19. Feb 10:25, Rand Deeb wrote: > The expression
 "inactags << bmp->db_agl2size" in the function > dbFinalizeBmap() is computed
 using int operands. Although the > values (inactags and db_agl2si [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [83.149.199.84 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [83.149.199.84 listed in sa-trusted.bondedsender.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1tkhix-0007rI-Kx
X-Mailman-Approved-At: Wed, 19 Feb 2025 14:33:34 +0000
Subject: Re: [Jfs-discussion] [PATCH 5.10.y] fs/jfs: cast inactags to s64 to
 prevent potential overflow
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

Hi,

On Wed, 19. Feb 10:25, Rand Deeb wrote:
> The expression "inactags << bmp->db_agl2size" in the function
> dbFinalizeBmap() is computed using int operands. Although the
> values (inactags and db_agl2size) are derived from filesystem
> parameters and are usually small, there is a theoretical risk that
> the shift could overflow a 32-bit int if extreme values occur.
> 
> According to the C standard, shifting a signed 32-bit int can lead
> to undefined behavior if the result exceeds its range. In our
> case, an overflow could miscalculate free blocks, potentially
> leading to erroneous filesystem accounting.
> 
> To ensure the arithmetic is performed in 64-bit space, we cast
> "inactags" to s64 before shifting. This defensive fix prevents any
> risk of overflow and complies with kernel coding best practices.
> 
> Found by Linux Verification Center (linuxtesting.org) with SVACE.
> 
> Signed-off-by: Rand Deeb <rand.sec96@gmail.com>
> ---

Why is the patch targeted only to 5.10.y? It should go to the mainline
first, no?

Please check https://www.kernel.org/doc/html/latest/process/stable-kernel-rules.html

>  fs/jfs/jfs_dmap.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
> index eedea23d70ff..3cc10f9bf9f8 100644
> --- a/fs/jfs/jfs_dmap.c
> +++ b/fs/jfs/jfs_dmap.c
> @@ -3728,8 +3728,8 @@ void dbFinalizeBmap(struct inode *ipbmap)
>  	 * system size is not a multiple of the group size).
>  	 */
>  	inactfree = (inactags && ag_rem) ?
> -	    ((inactags - 1) << bmp->db_agl2size) + ag_rem
> -	    : inactags << bmp->db_agl2size;
> +	    (((s64)inactags - 1) << bmp->db_agl2size) + ag_rem
> +	    : ((s64)inactags << bmp->db_agl2size);
>  
>  	/* determine how many free blocks are in the active
>  	 * allocation groups plus the average number of free blocks
> -- 
> 2.34.1


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
