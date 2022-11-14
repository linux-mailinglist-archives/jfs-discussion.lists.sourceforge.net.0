Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 17396627AF7
	for <lists+jfs-discussion@lfdr.de>; Mon, 14 Nov 2022 11:50:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ouX23-0008Vt-1C;
	Mon, 14 Nov 2022 10:49:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1ouX21-0008Vk-M8;
 Mon, 14 Nov 2022 10:49:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ubo9RUeILLOZCFhRqSz41sUmP7donszofRssChRT+mk=; b=lzoTiSM8wg3f3zNEX8rKCOlkXH
 fEDT+ISK9hBSUXiteVxIwhnGIpfuNcOj/31h6xECqQIs6D1eqCZvlCVcZz1leN5LVUBT1UYT6CvpX
 e5UAAZypYprJv1sMw9ewKqYRcQnaConabIRXzGsrSK1bas9R0nWVWsdYSJkEVyCNjJBM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ubo9RUeILLOZCFhRqSz41sUmP7donszofRssChRT+mk=; b=lnh3rDr93ZMQnJELiZpdfPKErg
 YV+wRZsW12bldoxk6sK84mP6SGOqITASb2XGNSHFiBlCXSbLI6doiGsBzVuaWNJEN5D0fvtrwmSEo
 g4W1hyJyfICWPehE5qQko6UjqDXD6kz8SNkQjiTjatk6ON7NKeaDV72AKbgs2wXbC5QI=;
Received: from smtp-out2.suse.de ([195.135.220.29])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ouX20-007pYw-Mb; Mon, 14 Nov 2022 10:49:37 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id E16871FE67;
 Mon, 14 Nov 2022 10:49:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1668422967; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Ubo9RUeILLOZCFhRqSz41sUmP7donszofRssChRT+mk=;
 b=FCJdYm9kzAhz4vYOrsAtx1I3ezNTwuYj9tisurbURs8GMQMuDY7MNqoKTq9Jo2s46wmDM4
 KLXrTSl6G1mjhcXykUIOgXNTJL65jcU/3xY8IYjqW7Cb2ICxqU9GCpKor69sgQtUVpUD1D
 pbWbo6t4OX6sRFdseSr8R25qMN9mhpg=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1668422967;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Ubo9RUeILLOZCFhRqSz41sUmP7donszofRssChRT+mk=;
 b=927zvK6sEulfOA+/7LmlwmEuhq43kTGhclLO5y7m/oMptFQXPkIWgf9Yn+PvAO20O14a4E
 315hsx4OV89dt4Cg==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id D284013A8C;
 Mon, 14 Nov 2022 10:49:27 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id o0VfMzcdcmOqZgAAMHmgww
 (envelope-from <jack@suse.cz>); Mon, 14 Nov 2022 10:49:27 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id 65ECAA0709; Mon, 14 Nov 2022 11:49:27 +0100 (CET)
Date: Mon, 14 Nov 2022 11:49:27 +0100
From: Jan Kara <jack@suse.cz>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <20221114104927.k5x4i4uanxskfs6m@quack3>
References: <20221113162902.883850-1-hch@lst.de>
 <20221113162902.883850-3-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221113162902.883850-3-hch@lst.de>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun 13-11-22 17:28:55,
 Christoph Hellwig wrote: > ->writepage
 is a very inefficient method to write back data, and only > used through
 write_cache_pages or a a fallback when no ->migrate_folio > me [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.29 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1ouX20-007pYw-Mb
Subject: Re: [Jfs-discussion] [PATCH 2/9] ext2: remove ->writepage
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
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 linux-ext4@vger.kernel.org, Bob Copeland <me@bobcopeland.com>,
 linux-karma-devel@lists.sourceforge.net, linux-mm@kvack.org,
 Mikulas Patocka <mikulas@artax.karlin.mff.cuni.cz>, Jan Kara <jack@suse.com>,
 linux-fsdevel@vger.kernel.org, Sungjong Seo <sj1557.seo@samsung.com>,
 Namjae Jeon <linkinjeon@kernel.org>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Sun 13-11-22 17:28:55, Christoph Hellwig wrote:
> ->writepage is a very inefficient method to write back data, and only
> used through write_cache_pages or a a fallback when no ->migrate_folio
> method is present.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Looks good! Feel free to add:

Acked-by: Jan Kara <jack@suse.cz>

								Honza
> ---
>  fs/ext2/inode.c | 6 ------
>  1 file changed, 6 deletions(-)
> 
> diff --git a/fs/ext2/inode.c b/fs/ext2/inode.c
> index 918ab2f9e4c05..3b2e3e1e0fa25 100644
> --- a/fs/ext2/inode.c
> +++ b/fs/ext2/inode.c
> @@ -869,11 +869,6 @@ int ext2_fiemap(struct inode *inode, struct fiemap_extent_info *fieinfo,
>  	return ret;
>  }
>  
> -static int ext2_writepage(struct page *page, struct writeback_control *wbc)
> -{
> -	return block_write_full_page(page, ext2_get_block, wbc);
> -}
> -
>  static int ext2_read_folio(struct file *file, struct folio *folio)
>  {
>  	return mpage_read_folio(folio, ext2_get_block);
> @@ -948,7 +943,6 @@ const struct address_space_operations ext2_aops = {
>  	.invalidate_folio	= block_invalidate_folio,
>  	.read_folio		= ext2_read_folio,
>  	.readahead		= ext2_readahead,
> -	.writepage		= ext2_writepage,
>  	.write_begin		= ext2_write_begin,
>  	.write_end		= ext2_write_end,
>  	.bmap			= ext2_bmap,
> -- 
> 2.30.2
> 
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
