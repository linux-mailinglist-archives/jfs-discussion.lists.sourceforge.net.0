Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 87DF542F4D0
	for <lists+jfs-discussion@lfdr.de>; Fri, 15 Oct 2021 16:06:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mbNpX-0007zy-4c; Fri, 15 Oct 2021 14:05:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <willy@infradead.org>)
 id 1mbNR1-0001fT-W1; Fri, 15 Oct 2021 13:39:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KanmlaFBwV6DRdQ41vIsGhe17Tn0ouHRuztKUsQZtZ0=; b=NZJivTAgboj21h9EVtwKkKHEE8
 00Jclqec3b7F/YRtRY6e9zuNbYAcN3O9s8A1voWyj8kyRWYgL5FkQo8xZATTMJcnifT4NW4U9ZL1c
 Z+xl0fZW4EdLfbSsAV2mBdIHdWFt/PN5wUx4COSY9WkNtg0zeU/JUmXdtGZiF4LyF1p4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KanmlaFBwV6DRdQ41vIsGhe17Tn0ouHRuztKUsQZtZ0=; b=c0yqsGeYGxkPvCnu2+7B3VEOBN
 U7yRrNQrkEviSDCVHqJwU3cpQANdgR7YupAQWyRc66JKrNoTHX+7fQg1tyV2fDNwg02iT5n6hyi9m
 LJueu10WdJFyvhydF2JqpA6uDI11eKuSFnmGpXpO1EPRr3Yo0HEThbNDL5OvfL486qxg=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mbNQy-00EVlE-O8; Fri, 15 Oct 2021 13:39:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=KanmlaFBwV6DRdQ41vIsGhe17Tn0ouHRuztKUsQZtZ0=; b=Sp0mzcOz6fCy6w+SFxvFJT113O
 5glduGFb7LrPQcGlbPxTVXMdHUuiHlqKZMAdoOUuvr7VmdXF1ZROQXYx/SURx8NNGczFxd78OKEWX
 g1EVnRcaMy66kxGA0Ycz2sVxG+Jq6Xakmu96RSvhrCic177Aboi4kmhdgF1+i/MmTps4PefQxR1U9
 R0lWGSxbM9vlrOVzh3s4+nOS+3Fdq1Tv3nAaot4M9Z7iIxha6Lnwv+o1M6OB/txkN3fli+COyWBGO
 MCf3+V04TrhkegQ0Jg+SGb+t7IWveuPWDgrPUju8wVNJF/jSdrYZ56qZJb0uP40KoBw/AcVk6NLsV
 0KeMg3+w==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1mbNMh-0092n0-E6; Fri, 15 Oct 2021 13:35:28 +0000
Date: Fri, 15 Oct 2021 14:35:15 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <YWmDk8YQKVPRGBfR@casper.infradead.org>
References: <20211015132643.1621913-1-hch@lst.de>
 <20211015132643.1621913-3-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211015132643.1621913-3-hch@lst.de>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Oct 15, 2021 at 03:26:15PM +0200, Christoph Hellwig
 wrote: > +static inline sector_t bdev_nr_bytes(struct block_device *bdev)
 > +{ > + return i_size_read(bdev->bd_inode); Uh. loff_t, surely? 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mbNQy-00EVlE-O8
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
 reiserfs-devel@vger.kernel.org, drbd-dev@lists.linbit.com,
 linux-nilfs@vger.kernel.org, linux-scsi@vger.kernel.org,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>, linux-ext4@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, Josef Bacik <josef@toxicpanda.com>,
 Coly Li <colyli@suse.de>, linux-raid@vger.kernel.org,
 linux-bcache@vger.kernel.org, David Sterba <dsterba@suse.com>,
 Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 Anton Altaparmakov <anton@tuxera.com>, Jens Axboe <axboe@kernel.dk>,
 linux-block@vger.kernel.org, linux-nfs@vger.kernel.org,
 Theodore Ts'o <tytso@mit.edu>, linux-ntfs-dev@lists.sourceforge.net,
 Jan Kara <jack@suse.com>, linux-fsdevel@vger.kernel.org,
 Phillip Lougher <phillip@squashfs.org.uk>, ntfs3@lists.linux.dev,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Fri, Oct 15, 2021 at 03:26:15PM +0200, Christoph Hellwig wrote:
> +static inline sector_t bdev_nr_bytes(struct block_device *bdev)
> +{
> +	return i_size_read(bdev->bd_inode);

Uh.  loff_t, surely?


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
