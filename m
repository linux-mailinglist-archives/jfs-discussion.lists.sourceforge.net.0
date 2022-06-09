Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0636D5452FD
	for <lists+jfs-discussion@lfdr.de>; Thu,  9 Jun 2022 19:31:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nzM0I-0005AE-R6; Thu, 09 Jun 2022 17:31:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jack@suse.cz>) id 1nzM0H-0005A7-Ii
 for jfs-discussion@lists.sourceforge.net; Thu, 09 Jun 2022 17:31:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7tKV3fosHA0ovCWHaUSEHmM/GS0HGXppzSqUsTLCZaU=; b=PtUtyuJHRqajktByLS2c7GkjsV
 MQ+KtpVt3fU7HOcPcaWxiv/EKQhilKEVBHReYrTzK9Mhdu4RstdlRGHp8NcwR3n2fse+XKs2W0HA4
 iyPGH85tBpvSB0i2lBGOy3lJb6nprzN3Q/Lsf7Cb3m8Jh7UUN8aq90KlHGyqwc7yGwbU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7tKV3fosHA0ovCWHaUSEHmM/GS0HGXppzSqUsTLCZaU=; b=QofZtunqPLBxgtZwusubbuX5gM
 lHEjxc/PoCJgId5ufmPAOEtskDcfwLdgwZXDjEbGHaQhKF6c2MAna6mAcRP03PYKs29z4hxMdmlbF
 /nWF90OEpEUr6FFKXIPb0lmBUNfytkhy6e5DlLzQOti6x0mKYHUFatgUDJp/6e9y5HaQ=;
Received: from smtp-out2.suse.de ([195.135.220.29])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nzM0C-0004lW-I7
 for jfs-discussion@lists.sourceforge.net; Thu, 09 Jun 2022 17:31:29 +0000
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
 by smtp-out2.suse.de (Postfix) with ESMTP id 977FF1FEBF;
 Thu,  9 Jun 2022 17:31:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1654795879; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=7tKV3fosHA0ovCWHaUSEHmM/GS0HGXppzSqUsTLCZaU=;
 b=ChJxJKhoUmWt7htAN7/HVo8ascgSHvj5di7vHEaEjwWicJP7utjPzhuycDwjuZFV64T97p
 0qcF9f4TNfYp3+d/6bLswFFccG/ppqFoD6pZdWAzPP2fqaOCnZWl1YVyY3ze1RqHspSilM
 zOwWBwGyk/ACGBClS9RfoF20eRQQwhM=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1654795879;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=7tKV3fosHA0ovCWHaUSEHmM/GS0HGXppzSqUsTLCZaU=;
 b=mwo6kTKQ7+/HZNlswVwvxMxYNzdMbWvu7YepBvG4hr5sUhPTTe1VCrmdmfXo/XQzGVyft8
 2sx9boi4uho6RWBw==
Received: from quack3.suse.cz (unknown [10.163.28.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by relay2.suse.de (Postfix) with ESMTPS id 8386A2C141;
 Thu,  9 Jun 2022 17:31:19 +0000 (UTC)
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id 2FFAFA0633; Thu,  9 Jun 2022 19:31:19 +0200 (CEST)
Date: Thu, 9 Jun 2022 19:31:19 +0200
From: Jan Kara <jack@suse.cz>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <20220609173119.b34yp6ey6ybokfdl@quack3.lan>
References: <20220608150451.1432388-1-hch@lst.de>
 <20220608150451.1432388-5-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220608150451.1432388-5-hch@lst.de>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed 08-06-22 17:04:50,
 Christoph Hellwig wrote: > All callers
 of mpage_writepage use block_write_full_page as their > ->writepage
 implementation, 
 so hard code that. > > Signed-off-by: Christoph Hel [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.29 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1nzM0C-0004lW-I7
Subject: Re: [Jfs-discussion] [PATCH 4/5] fs: don't call ->writepage from
 __mpage_writepage
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

On Wed 08-06-22 17:04:50, Christoph Hellwig wrote:
> All callers of mpage_writepage use block_write_full_page as their
> ->writepage implementation, so hard code that.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Similarly here NTFS (fs/ntfs3/) seems to have some non-trivial stuff besides
block_write_full_page()...

								Honza

> ---
>  fs/mpage.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/fs/mpage.c b/fs/mpage.c
> index 31a97a0acf5f5..a354ef2b4b4eb 100644
> --- a/fs/mpage.c
> +++ b/fs/mpage.c
> @@ -624,7 +624,7 @@ static int __mpage_writepage(struct page *page, struct writeback_control *wbc,
>  	/*
>  	 * The caller has a ref on the inode, so *mapping is stable
>  	 */
> -	ret = mapping->a_ops->writepage(page, wbc);
> +	ret = block_write_full_page(page, mpd->get_block, wbc);
>  	mapping_set_error(mapping, ret);
>  out:
>  	mpd->bio = bio;
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
