Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 50F88548499
	for <lists+jfs-discussion@lfdr.de>; Mon, 13 Jun 2022 12:47:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1o0hbE-0000Wn-Lp; Mon, 13 Jun 2022 10:47:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jack@suse.cz>) id 1o0hb4-0000Wg-Mh
 for jfs-discussion@lists.sourceforge.net; Mon, 13 Jun 2022 10:47:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9D4LOgTRI6f8VNdDcls0w5x8mnJwI93bl+ycJ6sjsC4=; b=DQYzyDrxPjea58tYFirvv4CHs7
 u00nStzrk/UWzgSRdG9LqmP2sSbQFzEgv5eMa8Haa2sCkSN1J4lQIZg/iRljGDU/GOXe8TQ3yYuxq
 ogd7L02IYpelZVDf1RVr3UjENXluzbOLKyqI0QNR9Rt3oCuApeFsKnv5luRwAI9lWWtY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9D4LOgTRI6f8VNdDcls0w5x8mnJwI93bl+ycJ6sjsC4=; b=CnKcPTstp+7cq8shVEzV5NN6vz
 tydrkjrieZRiCZxu6VcJlCEplyMpry1JLYt4O26FAXbsX5hsw0b6mRi1OuZUzKFy52uubQXg6Dlxl
 w3+K9tCOxvAO512EcxbdBbGoMDI4NSsTBPsZ8mu9fZT8peUXPBPOEJrJQDabI++qE0yo=;
Received: from smtp-out1.suse.de ([195.135.220.28])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1o0hb3-0001Eg-9n
 for jfs-discussion@lists.sourceforge.net; Mon, 13 Jun 2022 10:47:03 +0000
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
 by smtp-out1.suse.de (Postfix) with ESMTP id E7BB421D73;
 Mon, 13 Jun 2022 10:46:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1655117210; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=9D4LOgTRI6f8VNdDcls0w5x8mnJwI93bl+ycJ6sjsC4=;
 b=Bpm0Q6U8QbyeXOfR3l+Bb6BF+MAecgp+oNatjUaaVxt7qP708uexjMBZWCGyWLsfIOZFGX
 6jS46bbjkex9hEULZZwfFWHh0B87lxiP28OPbYCwxj5TrWdAgyID+DxElk3aW6hoA7GAkQ
 VrrbyMb554Kfx4olzIdGBXOb2OOz3x4=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1655117210;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=9D4LOgTRI6f8VNdDcls0w5x8mnJwI93bl+ycJ6sjsC4=;
 b=Tqql0ADCuLk5NfS41NVndCiy75JS/KRScqvTHZgWFvE8DzXzmhIgnPbO/a8jOX+Obw0YAs
 HSu2pqV650JLf2Ag==
Received: from quack3.suse.cz (unknown [10.163.28.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by relay2.suse.de (Postfix) with ESMTPS id CCB732C141;
 Mon, 13 Jun 2022 10:46:50 +0000 (UTC)
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id 830CAA0634; Mon, 13 Jun 2022 12:46:47 +0200 (CEST)
Date: Mon, 13 Jun 2022 12:46:47 +0200
From: Jan Kara <jack@suse.cz>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <20220613104647.wjt27tqijdou3vm4@quack3.lan>
References: <20220613053715.2394147-1-hch@lst.de>
 <20220613053715.2394147-2-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220613053715.2394147-2-hch@lst.de>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon 13-06-22 07:37:10, Christoph Hellwig wrote: > Handle
 the resident case with an explicit generic_writepages call instead > of using
 the obscure overload that makes mpage_writepages with a NULL > [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.28 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1o0hb3-0001Eg-9n
Subject: Re: [Jfs-discussion] [PATCH 1/6] ntfs3: refactor ntfs_writepages
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
 ntfs3@lists.linux.dev, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 Jan Kara <jack@suse.com>, linux-fsdevel@vger.kernel.org,
 linux-ext4@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Mon 13-06-22 07:37:10, Christoph Hellwig wrote:
> Handle the resident case with an explicit generic_writepages call instead
> of using the obscure overload that makes mpage_writepages with a NULL
> get_block do the same thing.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Yeah, much more obvious :). Feel free to add:

Reviewed-by: Jan Kara <jack@suse.cz>

								Honza

> ---
>  fs/ntfs3/inode.c | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
> 
> diff --git a/fs/ntfs3/inode.c b/fs/ntfs3/inode.c
> index be4ebdd8048b0..28c09c25b823d 100644
> --- a/fs/ntfs3/inode.c
> +++ b/fs/ntfs3/inode.c
> @@ -851,12 +851,10 @@ static int ntfs_writepage(struct page *page, struct writeback_control *wbc)
>  static int ntfs_writepages(struct address_space *mapping,
>  			   struct writeback_control *wbc)
>  {
> -	struct inode *inode = mapping->host;
> -	struct ntfs_inode *ni = ntfs_i(inode);
>  	/* Redirect call to 'ntfs_writepage' for resident files. */
> -	get_block_t *get_block = is_resident(ni) ? NULL : &ntfs_get_block;
> -
> -	return mpage_writepages(mapping, wbc, get_block);
> +	if (is_resident(ntfs_i(mapping->host)))
> +		return generic_writepages(mapping, wbc);
> +	return mpage_writepages(mapping, wbc, ntfs_get_block);
>  }
>  
>  static int ntfs_get_block_write_begin(struct inode *inode, sector_t vbn,
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
