Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A2A2C42C22D
	for <lists+jfs-discussion@lfdr.de>; Wed, 13 Oct 2021 16:08:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1maevv-0000ej-Fi; Wed, 13 Oct 2021 14:08:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <colyli@suse.de>)
 id 1maWhz-000540-RV; Wed, 13 Oct 2021 05:21:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ILLm2pe17/wADifWsNez+bTJrwsc+lrviMwLK7kUvDI=; b=iQ2vOCG5aMMKOscxrOVINa5ef5
 3Ulba0ZVnSKqp2UurP8K/0EdLh+MEhL7P9iIW4WcicUDlohjfXiaH4fj2HaPjvf1TTL8Q/etPov/X
 5oJap1UQXnzJuxvf/6HLTVk0ganaoPg2Mp7PP/pOeG26ixsulQVM50nmLySfLuWjkG2k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ILLm2pe17/wADifWsNez+bTJrwsc+lrviMwLK7kUvDI=; b=e1AZSUVhl1/SMqiHsrBICk8pZK
 TBVdQu2P8monMPqZjpmo1brLgWEjEJE4SLR+VDuvUD26JY+RbeFMn252FhKfbwHtOv1CVcU0KMJov
 6AFNtM9+cmRMGZHRohbbwODPKMeXVcxryvhI9cuRtyZNTEhQu6oKYbjarRezRG+htcAU=;
Received: from smtp-out2.suse.de ([195.135.220.29])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1maWhw-0002Yk-I3; Wed, 13 Oct 2021 05:21:43 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 5E2BE1FF87;
 Wed, 13 Oct 2021 05:21:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1634102493; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ILLm2pe17/wADifWsNez+bTJrwsc+lrviMwLK7kUvDI=;
 b=bvKId0oH3n+XWRAa8k+X7S4sSfCSq6r7k6wkqvducj0gvOulmoiit7vAXJt7/Fugc4ApBB
 +eyuMKl31qjAEJWuSCiR357fXwBwkLJzIMHJmLSrbkPgZIeBcwzOpezb3tR0358vd8V0Yu
 v4i5Ls9qoC9uBvhPFPVe6ERT85hRkzU=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1634102493;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ILLm2pe17/wADifWsNez+bTJrwsc+lrviMwLK7kUvDI=;
 b=7QNd9vO2OGh2y9jVTVQKK6beKgduFwgxo0TkSLgWMuvnfJFmYXqVQMfqyW0QcEDOD1zLDp
 Em1u+x09Gi2O+KBA==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id B800113CAE;
 Wed, 13 Oct 2021 05:21:24 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id rI5FINRsZmEARAAAMHmgww
 (envelope-from <colyli@suse.de>); Wed, 13 Oct 2021 05:21:24 +0000
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
References: <20211013051042.1065752-1-hch@lst.de>
 <20211013051042.1065752-2-hch@lst.de>
From: Coly Li <colyli@suse.de>
Message-ID: <cd1b2185-9682-1d97-9789-96f833007f62@suse.de>
Date: Wed, 13 Oct 2021 13:21:22 +0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211013051042.1065752-2-hch@lst.de>
Content-Language: en-US
X-Spam-Score: -4.5 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 10/13/21 1:10 PM,
 Christoph Hellwig wrote: > Use the equivalent
 block layer helper instead. > > Signed-off-by: Christoph Hellwig <hch@lst.de>
 Acked-by: Coly Li <colyli@suse.de> Thanks. 
 Content analysis details:   (-4.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.29 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: suse.de]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1maWhw-0002Yk-I3
X-Mailman-Approved-At: Wed, 13 Oct 2021 14:08:33 +0000
Subject: Re: [Jfs-discussion] [PATCH 01/29] bcache: remove bdev_sectors
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
 Mike Snitzer <snitzer@redhat.com>, linux-nvme@lists.infradead.org,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 Song Liu <song@kernel.org>, dm-devel@redhat.com, target-devel@vger.kernel.org,
 linux-mtd@lists.infradead.org, drbd-dev@lists.linbit.com,
 linux-nilfs@vger.kernel.org, linux-scsi@vger.kernel.org,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>, linux-ext4@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, Josef Bacik <josef@toxicpanda.com>,
 reiserfs-devel@vger.kernel.org, linux-raid@vger.kernel.org,
 linux-bcache@vger.kernel.org, David Sterba <dsterba@suse.com>,
 Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 Anton Altaparmakov <anton@tuxera.com>, linux-block@vger.kernel.org,
 linux-nfs@vger.kernel.org, Theodore Ts'o <tytso@mit.edu>,
 linux-ntfs-dev@lists.sourceforge.net, Jan Kara <jack@suse.com>,
 linux-fsdevel@vger.kernel.org, Phillip Lougher <phillip@squashfs.org.uk>,
 ntfs3@lists.linux.dev, linux-btrfs@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 10/13/21 1:10 PM, Christoph Hellwig wrote:
> Use the equivalent block layer helper instead.
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Acked-by: Coly Li <colyli@suse.de>

Thanks.

Coly Li

> ---
>   drivers/md/bcache/super.c     | 2 +-
>   drivers/md/bcache/util.h      | 4 ----
>   drivers/md/bcache/writeback.c | 2 +-
>   3 files changed, 2 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/md/bcache/super.c b/drivers/md/bcache/super.c
> index f2874c77ff797..4f89985abe4b7 100644
> --- a/drivers/md/bcache/super.c
> +++ b/drivers/md/bcache/super.c
> @@ -1002,7 +1002,7 @@ static void calc_cached_dev_sectors(struct cache_set *c)
>   	struct cached_dev *dc;
>   
>   	list_for_each_entry(dc, &c->cached_devs, list)
> -		sectors += bdev_sectors(dc->bdev);
> +		sectors += bdev_nr_sectors(dc->bdev);
>   
>   	c->cached_dev_sectors = sectors;
>   }
> diff --git a/drivers/md/bcache/util.h b/drivers/md/bcache/util.h
> index b64460a762677..a7da7930a7fda 100644
> --- a/drivers/md/bcache/util.h
> +++ b/drivers/md/bcache/util.h
> @@ -584,8 +584,4 @@ static inline unsigned int fract_exp_two(unsigned int x,
>   void bch_bio_map(struct bio *bio, void *base);
>   int bch_bio_alloc_pages(struct bio *bio, gfp_t gfp_mask);
>   
> -static inline sector_t bdev_sectors(struct block_device *bdev)
> -{
> -	return bdev->bd_inode->i_size >> 9;
> -}
>   #endif /* _BCACHE_UTIL_H */
> diff --git a/drivers/md/bcache/writeback.c b/drivers/md/bcache/writeback.c
> index 8120da278161e..c7560f66dca88 100644
> --- a/drivers/md/bcache/writeback.c
> +++ b/drivers/md/bcache/writeback.c
> @@ -45,7 +45,7 @@ static uint64_t __calc_target_rate(struct cached_dev *dc)
>   	 * backing volume uses about 2% of the cache for dirty data.
>   	 */
>   	uint32_t bdev_share =
> -		div64_u64(bdev_sectors(dc->bdev) << WRITEBACK_SHARE_SHIFT,
> +		div64_u64(bdev_nr_sectors(dc->bdev) << WRITEBACK_SHARE_SHIFT,
>   				c->cached_dev_sectors);
>   
>   	uint64_t cache_dirty_target =



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
