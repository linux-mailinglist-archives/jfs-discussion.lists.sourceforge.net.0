Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BFE50627B15
	for <lists+jfs-discussion@lfdr.de>; Mon, 14 Nov 2022 11:53:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ouX5A-0001yj-P9;
	Mon, 14 Nov 2022 10:52:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1ouX4q-0001xD-7m;
 Mon, 14 Nov 2022 10:52:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=clcJq84x09/0lcWlLPOIuK2xM1hHOs9iOojMYOjosj8=; b=RNX2PWFrPNOPT7pS+fAH9Xjpl7
 d8ovBehsdB0NDzo9UQOOsP9i76smrjoWPLmEBE6s3LsRf8OYZQbsLG7lhVSIn8hrYkkEsGJpIfQMW
 Aar3pklK4/Kw1VM1CPELuVYWyXGO85iy9U4geb4iv2dJY94amALkMLYUi62iFPjkDz0Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=clcJq84x09/0lcWlLPOIuK2xM1hHOs9iOojMYOjosj8=; b=Mr6IGX7qDR5hI8WdswcdvF3Wmv
 7TIe60ow/DaDSrLP9k9byADpFHMcnCX2/HiZxmFaQ70byQScONiPjCTsI2yawn7KIaBIEy/1v4Ko0
 HNkfRhMFMH+tpwtzl0FOuGiKcEAapOKnQSqu+8dtVkXd6g6Qr292udPVPizsXjGR88ZU=;
Received: from smtp-out2.suse.de ([195.135.220.29])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ouX4n-0001hY-BA; Mon, 14 Nov 2022 10:52:31 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 2EDFD1FE6D;
 Mon, 14 Nov 2022 10:52:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1668423134; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=clcJq84x09/0lcWlLPOIuK2xM1hHOs9iOojMYOjosj8=;
 b=lQu2Pjy3pcp9uwaKFc3jgFAkHtcCek0sMnlUAE6BmF19YIti5i9HZ/q7Nk10ciS9BlKNeN
 FEU74NgEx7LkiqMQJKzQMvpI9eKeD8eRtQGzkDBgiysrujSGACB7sdURignxiBCVcTV4aW
 9GVrMofKVCVgS53i4KFkqjdnrD/gQ3Q=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1668423134;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=clcJq84x09/0lcWlLPOIuK2xM1hHOs9iOojMYOjosj8=;
 b=r4V7upTQYSfV/3yRbELgnAsYzoLI4t9YZUR2mEvVSkpz2isJwNzAuGEbJHWIJKKfSWt4OX
 9Z6E2DqrJ96wkmBw==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 1F7F713A8C;
 Mon, 14 Nov 2022 10:52:14 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id SPauB94dcmNDaAAAMHmgww
 (envelope-from <jack@suse.cz>); Mon, 14 Nov 2022 10:52:14 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id 76E40A0709; Mon, 14 Nov 2022 11:52:13 +0100 (CET)
Date: Mon, 14 Nov 2022 11:52:13 +0100
From: Jan Kara <jack@suse.cz>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <20221114105213.v5gby6zngz6y6med@quack3>
References: <20221113162902.883850-1-hch@lst.de>
 <20221113162902.883850-10-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221113162902.883850-10-hch@lst.de>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun 13-11-22 17:29:02,
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
X-Headers-End: 1ouX4n-0001hY-BA
Subject: Re: [Jfs-discussion] [PATCH 9/9] udf: remove ->writepage
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

On Sun 13-11-22 17:29:02, Christoph Hellwig wrote:
> ->writepage is a very inefficient method to write back data, and only
> used through write_cache_pages or a a fallback when no ->migrate_folio
> method is present.
> 
> Set ->migrate_folio to the generic buffer_head based helper, and remove
> the ->writepage implementation in extfat.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Looks good. Feel free to add:

Acked-by: Jan Kara <jack@suse.cz>

								Honza

> ---
>  fs/udf/inode.c | 7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)
> 
> diff --git a/fs/udf/inode.c b/fs/udf/inode.c
> index dce6ae9ae306c..0246b1b86fb91 100644
> --- a/fs/udf/inode.c
> +++ b/fs/udf/inode.c
> @@ -182,11 +182,6 @@ static void udf_write_failed(struct address_space *mapping, loff_t to)
>  	}
>  }
>  
> -static int udf_writepage(struct page *page, struct writeback_control *wbc)
> -{
> -	return block_write_full_page(page, udf_get_block, wbc);
> -}
> -
>  static int udf_writepages(struct address_space *mapping,
>  			struct writeback_control *wbc)
>  {
> @@ -239,12 +234,12 @@ const struct address_space_operations udf_aops = {
>  	.invalidate_folio = block_invalidate_folio,
>  	.read_folio	= udf_read_folio,
>  	.readahead	= udf_readahead,
> -	.writepage	= udf_writepage,
>  	.writepages	= udf_writepages,
>  	.write_begin	= udf_write_begin,
>  	.write_end	= generic_write_end,
>  	.direct_IO	= udf_direct_IO,
>  	.bmap		= udf_bmap,
> +	.migrate_folio	= buffer_migrate_folio,
>  };
>  
>  /*
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
