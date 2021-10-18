Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2269A4325C9
	for <lists+jfs-discussion@lfdr.de>; Mon, 18 Oct 2021 19:58:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mcWty-0003Fj-VV; Mon, 18 Oct 2021 17:58:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hch@lst.de>)
 id 1mcWl6-000876-8e; Mon, 18 Oct 2021 17:49:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=m4iEGbscF67yNO4NRuzcQmEmbPSlh65Fo1hYQ3vpXzc=; b=d7jz+dGfoHVaVxsO+ZszKIQndW
 K2iUwqHYOzo+t/hrvMAcNxXGwCRsZ0M51i3d9tFhixBmvvgm8qb2YeU5Xep/PMJSoGD8bVlgaFohj
 T7p8sHfrd0CqcTInI1RdOqbwtCs4A/2O4uq0iyF5F2PrZ6eFpr8VUhiBXl/KsMCHwiqo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=m4iEGbscF67yNO4NRuzcQmEmbPSlh65Fo1hYQ3vpXzc=; b=NOspJQ4zLEu5jDSSWjRYbtREw3
 m7MuDcTjpCFiypn7gaWcRoC7tanv4tVkKNZCtd8mtL6Z64m/UiXdzLbQwGD6mYKFWsL2BChqhF2sF
 RoeFOIPUytTnXJZQlEO0ol6EWE8Zjk2dOk2bvWhVHqQGX8yAT9rx5qjcoktKYiAWr7o0=;
Received: from verein.lst.de ([213.95.11.211])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mcWl4-004eYW-Co; Mon, 18 Oct 2021 17:49:12 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 67F2A68BFE; Mon, 18 Oct 2021 19:49:01 +0200 (CEST)
Date: Mon, 18 Oct 2021 19:49:01 +0200
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Message-ID: <20211018174901.GA3990@lst.de>
References: <20211018101130.1838532-1-hch@lst.de>
 <4a8c3a39-9cd3-5b2f-6d0f-a16e689755e6@kernel.dk>
 <20211018171843.GA3338@lst.de>
 <2f5dcf79-8419-45ff-c27c-68d43242ccfe@kernel.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2f5dcf79-8419-45ff-c27c-68d43242ccfe@kernel.dk>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Oct 18, 2021 at 11:40:51AM -0600, Jens Axboe wrote:
 > static inline loff_t bdev_nr_bytes(struct block_device *bdev) > { > - return
 i_size_read(bdev->bd_inode); > + return bdev->bd_nr_sectors; 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-Headers-End: 1mcWl4-004eYW-Co
X-Mailman-Approved-At: Mon, 18 Oct 2021 17:58:20 +0000
Subject: Re: [Jfs-discussion] don't use ->bd_inode to access the block
 device size v3
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
 reiserfs-devel@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 drbd-dev@lists.linbit.com, linux-nilfs@vger.kernel.org,
 linux-scsi@vger.kernel.org, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
 linux-ext4@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 Josef Bacik <josef@toxicpanda.com>, Coly Li <colyli@suse.de>,
 linux-raid@vger.kernel.org, linux-bcache@vger.kernel.org,
 David Sterba <dsterba@suse.com>, Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 Anton Altaparmakov <anton@tuxera.com>, linux-block@vger.kernel.org,
 linux-nfs@vger.kernel.org, Theodore Ts'o <tytso@mit.edu>,
 linux-ntfs-dev@lists.sourceforge.net, Jan Kara <jack@suse.com>,
 linux-fsdevel@vger.kernel.org, Phillip Lougher <phillip@squashfs.org.uk>,
 ntfs3@lists.linux.dev, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Mon, Oct 18, 2021 at 11:40:51AM -0600, Jens Axboe wrote:
>  static inline loff_t bdev_nr_bytes(struct block_device *bdev)
>  {
> -	return i_size_read(bdev->bd_inode);
> +	return bdev->bd_nr_sectors;

This hunk needs to go into bdev_nr_sectors, and the bdev_nr_bytes
probably wants to call bdev_nr_sectors and do the shifting.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
