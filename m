Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F57D5452EB
	for <lists+jfs-discussion@lfdr.de>; Thu,  9 Jun 2022 19:26:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nzLum-0005m4-Qf; Thu, 09 Jun 2022 17:25:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jack@suse.cz>) id 1nzLul-0005ls-Jt
 for jfs-discussion@lists.sourceforge.net; Thu, 09 Jun 2022 17:25:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Qqv5M93wpHo23KHWJ4hOb2+wV7cmIhR4afJUVlNrr4U=; b=cyUB+CacsUijP3FLwoL5bTk1Sy
 MhQ5wcuL8J1EELCvfXjUQ2ZyuTwa+Ua1vTZvcHhmmozMtl1kYaF3ONrxPKqsnVnUAWhNCcX/1dDDW
 LGLBrr+BudfaHO4t47oBA1jPETpf2Df1gtLMEfdvJxfV9k+Pr1ntlUBXODZ/OdnPy9aE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Qqv5M93wpHo23KHWJ4hOb2+wV7cmIhR4afJUVlNrr4U=; b=QqKPuKOi6cEluoHHdSBB0DuJ3Q
 u5r1ANngdKH23OGFqJNvJIYG4fRoFvT5kxVkTOpKV0X+YwvLygDSsanlh8cJWmnmYuv+eFpQ0DeZ2
 VQLSzuIYD+8OdUY9IDW7xkKlcyQ4hZG3Yp6jvwHLEhrMGBfNfE6Doh1AjXPCgKUJ/fqQ=;
Received: from smtp-out2.suse.de ([195.135.220.29])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nzLuf-0004Ym-1M
 for jfs-discussion@lists.sourceforge.net; Thu, 09 Jun 2022 17:25:46 +0000
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
 by smtp-out2.suse.de (Postfix) with ESMTP id 20B841FEC7;
 Thu,  9 Jun 2022 17:25:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1654795536; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Qqv5M93wpHo23KHWJ4hOb2+wV7cmIhR4afJUVlNrr4U=;
 b=ITmVuKoPV03RoO2+mK8TXq0amJTLvwnDZe0aqwtVO9PtH4SY/Lfk/gofY95bT3aRhlJVRW
 Zw+T2xfLTKDGPtSNDQuVzZPJxzxo7oLfY5FvR0OU2qNRR6OQzJYetKsWGgdwZZILRxilfL
 v5V5fs6JqR8RpiWudRI7T0Sbx2Fnfik=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1654795536;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Qqv5M93wpHo23KHWJ4hOb2+wV7cmIhR4afJUVlNrr4U=;
 b=fiqhUZwHZDSMOLZttYnvjndI1d6PgUdKXGp5dyuFMCkdkjm6L/Y//rikXFpu1lK8Cv7vAk
 PW+5IM1fhIeSGbBg==
Received: from quack3.suse.cz (unknown [10.163.28.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by relay2.suse.de (Postfix) with ESMTPS id 083E62C141;
 Thu,  9 Jun 2022 17:25:36 +0000 (UTC)
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id 4C8D8A0633; Thu,  9 Jun 2022 19:25:30 +0200 (CEST)
Date: Thu, 9 Jun 2022 19:25:30 +0200
From: Jan Kara <jack@suse.cz>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <20220609172530.q7bzttn5v2orirre@quack3.lan>
References: <20220608150451.1432388-1-hch@lst.de>
 <20220608150451.1432388-6-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220608150451.1432388-6-hch@lst.de>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed 08-06-22 17:04:51, Christoph Hellwig wrote: > No one
 calls mpage_writepages with a NULL get_block paramter, so remove > support
 for that case. > > Signed-off-by: Christoph Hellwig <hch@lst.de> 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.29 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nzLuf-0004Ym-1M
Subject: Re: [Jfs-discussion] [PATCH 5/5] fs: remove the NULL get_block case
 in mpage_writepages
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
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 Jan Kara <jack@suse.com>, linux-fsdevel@vger.kernel.org,
 linux-ext4@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Wed 08-06-22 17:04:51, Christoph Hellwig wrote:
> No one calls mpage_writepages with a NULL get_block paramter, so remove
> support for that case.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

What about ntfs_writepages()? That seems to call mpage_writepages() with
NULL get_block() in one case...

								Honza

> ---
>  fs/mpage.c | 22 ++++++----------------
>  1 file changed, 6 insertions(+), 16 deletions(-)
> 
> diff --git a/fs/mpage.c b/fs/mpage.c
> index a354ef2b4b4eb..e4cf881634a6a 100644
> --- a/fs/mpage.c
> +++ b/fs/mpage.c
> @@ -636,8 +636,6 @@ static int __mpage_writepage(struct page *page, struct writeback_control *wbc,
>   * @mapping: address space structure to write
>   * @wbc: subtract the number of written pages from *@wbc->nr_to_write
>   * @get_block: the filesystem's block mapper function.
> - *             If this is NULL then use a_ops->writepage.  Otherwise, go
> - *             direct-to-BIO.
>   *
>   * This is a library function, which implements the writepages()
>   * address_space_operation.
> @@ -654,24 +652,16 @@ int
>  mpage_writepages(struct address_space *mapping,
>  		struct writeback_control *wbc, get_block_t get_block)
>  {
> +	struct mpage_data mpd = {
> +		.get_block	= get_block,
> +	};
>  	struct blk_plug plug;
>  	int ret;
>  
>  	blk_start_plug(&plug);
> -
> -	if (!get_block)
> -		ret = generic_writepages(mapping, wbc);
> -	else {
> -		struct mpage_data mpd = {
> -			.bio = NULL,
> -			.last_block_in_bio = 0,
> -			.get_block = get_block,
> -		};
> -
> -		ret = write_cache_pages(mapping, wbc, __mpage_writepage, &mpd);
> -		if (mpd.bio)
> -			mpage_bio_submit(mpd.bio);
> -	}
> +	ret = write_cache_pages(mapping, wbc, __mpage_writepage, &mpd);
> +	if (mpd.bio)
> +		mpage_bio_submit(mpd.bio);
>  	blk_finish_plug(&plug);
>  	return ret;
>  }
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
