Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3783142F4C4
	for <lists+jfs-discussion@lfdr.de>; Fri, 15 Oct 2021 16:05:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mbNpX-0007zu-16; Fri, 15 Oct 2021 14:05:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <hch@lst.de>)
 id 1mbNOd-0001aS-FT; Fri, 15 Oct 2021 13:37:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0/1fg8ZfMoq3cTXowu7jEwUyGGHgYFQBxdNPZawD6m4=; b=SEQgpA+QwtKwO8jyzJt1M7Zr2t
 AjXe7VRCbgcVIM0ezQz6cY4KHJMPZ8puoADeXmre1kKRZEF5jHBSGPhh8hESqFIgBATKGyKrByiAt
 Ty/ftpFZ9PdMzue6+sRns0eWTuGg3IaZ88nNwW8pC0uFYt7X9PiM86wLcPIhYXTjVmPc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0/1fg8ZfMoq3cTXowu7jEwUyGGHgYFQBxdNPZawD6m4=; b=bwkfP/RZHz4CrCaKEcyXZ8g+O8
 e14BKxCQfAXbDF5dGHa2XuM8fqTxep3EqIseVKAX20OQfh2T3LVLyOehBSpjrmiljdn93Oc1LzAKs
 PIzLhgHZkgTaaD8DCNOsXDCXudLaxa11OZsDDZCp1QDD9UQCqrRDJr67R9pH3sLFnUlA=;
Received: from verein.lst.de ([213.95.11.211])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mbNOb-0000HH-LZ; Fri, 15 Oct 2021 13:37:15 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 7D96568BEB; Fri, 15 Oct 2021 15:37:02 +0200 (CEST)
Date: Fri, 15 Oct 2021 15:37:01 +0200
From: Christoph Hellwig <hch@lst.de>
To: Matthew Wilcox <willy@infradead.org>
Message-ID: <20211015133701.GA31240@lst.de>
References: <20211015132643.1621913-1-hch@lst.de>
 <20211015132643.1621913-3-hch@lst.de> <YWmDk8YQKVPRGBfR@casper.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YWmDk8YQKVPRGBfR@casper.infradead.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Oct 15, 2021 at 02:35:15PM +0100,
 Matthew Wilcox wrote:
 > On Fri, Oct 15, 2021 at 03:26:15PM +0200, Christoph Hellwig wrote: > >
 +static inline sector_t bdev_nr_bytes(struct block_device *bdev [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-Headers-End: 1mbNOb-0000HH-LZ
X-Mailman-Approved-At: Fri, 15 Oct 2021 14:04:58 +0000
Subject: Re: [Jfs-discussion] [PATCH 02/30] block: add a bdev_nr_bytes helper
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
 Anton Altaparmakov <anton@tuxera.com>, Jens Axboe <axboe@kernel.dk>,
 linux-block@vger.kernel.org, linux-nfs@vger.kernel.org,
 Theodore Ts'o <tytso@mit.edu>, linux-ntfs-dev@lists.sourceforge.net,
 Jan Kara <jack@suse.com>, linux-fsdevel@vger.kernel.org,
 Phillip Lougher <phillip@squashfs.org.uk>, ntfs3@lists.linux.dev,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Fri, Oct 15, 2021 at 02:35:15PM +0100, Matthew Wilcox wrote:
> On Fri, Oct 15, 2021 at 03:26:15PM +0200, Christoph Hellwig wrote:
> > +static inline sector_t bdev_nr_bytes(struct block_device *bdev)
> > +{
> > +	return i_size_read(bdev->bd_inode);
> 
> Uh.  loff_t, surely?

Yes, that wuld be the right type.  Note that it makes a difference
outside of documentation purposes.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
