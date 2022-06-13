Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5800354849D
	for <lists+jfs-discussion@lfdr.de>; Mon, 13 Jun 2022 12:53:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1o0hh9-0000de-96; Mon, 13 Jun 2022 10:53:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jack@suse.cz>) id 1o0hh7-0000dY-DB
 for jfs-discussion@lists.sourceforge.net; Mon, 13 Jun 2022 10:53:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XqTpxE8yxYYRD/ZdpkztnOS2u2fkB5g/9Dmp+zple7w=; b=lw0UmhBE1gy/ESAdMDJR+6i+PD
 8PYgbO6gJ+sOmrcIy2ZC3NvXHny677SNxD3mCcJWJi5bFANgbdmxc0yXlYagBbkojor4MXzNdzOve
 IXk2vr8vC9Qje1zCClY++4sglzC5B7UTs4f6IwNqYtz0XKN4pol6dSClxQDdIf2a2mLw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XqTpxE8yxYYRD/ZdpkztnOS2u2fkB5g/9Dmp+zple7w=; b=ZPmbSIt9MAUi8ZONNU+b6XKFf4
 i2Dff+NSf51R0lBxbJbhOmPRDUVNmyaepSNszImx5NLw2SM+6HOEp5D4YPp9zOEW6BpVlY6nPbl08
 nZ3VEwNJI+VLUeqNoYMuPsOA6zEzgflDDTdXwuPVlpbLrlIE6OnhttyIyVZSwh3Z8YmY=;
Received: from smtp-out2.suse.de ([195.135.220.29])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1o0hh5-0006WT-Ni
 for jfs-discussion@lists.sourceforge.net; Mon, 13 Jun 2022 10:53:18 +0000
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
 by smtp-out2.suse.de (Postfix) with ESMTP id 1C97B1F8AB;
 Mon, 13 Jun 2022 10:53:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1655117583; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=XqTpxE8yxYYRD/ZdpkztnOS2u2fkB5g/9Dmp+zple7w=;
 b=SUSZ8nM3O4EyRpbT5YkFU0clddDZEOrRDp7kMrJTnNsatDMQYu6Jdf8atSklUx8PMJvjok
 ZZmOd5Fylbz2Vn7bGUmt1/2cci8ItL0gMon9ieGf8p1zgynEt4q/fFHToDQdxk+aAgUN4P
 zzOJ/CkyJqeWhUedpVtWXdeiXDyxqBE=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1655117583;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=XqTpxE8yxYYRD/ZdpkztnOS2u2fkB5g/9Dmp+zple7w=;
 b=86VBSlEwzD3hC55rA05ME4jXwgF4tz+a4fJiTsnx25nzTsv9kQ8GiUfY1EZyIuzDNwksJK
 mTvFTSRvEvEBr6CA==
Received: from quack3.suse.cz (unknown [10.163.28.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by relay2.suse.de (Postfix) with ESMTPS id 095632C141;
 Mon, 13 Jun 2022 10:53:03 +0000 (UTC)
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id A3C1CA0634; Mon, 13 Jun 2022 12:53:02 +0200 (CEST)
Date: Mon, 13 Jun 2022 12:53:02 +0200
From: Jan Kara <jack@suse.cz>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <20220613105302.pmtqxjbfwmtzkgjh@quack3.lan>
References: <20220613053715.2394147-1-hch@lst.de>
 <20220613053715.2394147-6-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220613053715.2394147-6-hch@lst.de>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon 13-06-22 07:37:14,
 Christoph Hellwig wrote: > All callers
 of mpage_writepage use block_write_full_page as their > ->writepage
 implementation
 when called from mpage_writepages > (although for nt [...] 
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
X-Headers-End: 1o0hh5-0006WT-Ni
Subject: Re: [Jfs-discussion] [PATCH 5/6] fs: don't call ->writepage from
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
 ntfs3@lists.linux.dev, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 Jan Kara <jack@suse.com>, linux-fsdevel@vger.kernel.org,
 linux-ext4@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Mon 13-06-22 07:37:14, Christoph Hellwig wrote:
> All callers of mpage_writepage use block_write_full_page as their
> ->writepage implementation when called from mpage_writepages
> (although for ntfs3 this is obsfucated a bit).
> 
> Just call block_write_full_page directly instead of going through
> the ->writepage indirection.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Yeah, ntfs3 is not completely obvious but I agree we should not get to the
non-trivial case of ntfs_writepage() from mpage_writepages() now. Feel free
to add:

Reviewed-by: Jan Kara <jack@suse.cz>

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
