Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1059A42F96B
	for <lists+jfs-discussion@lfdr.de>; Fri, 15 Oct 2021 18:58:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mbQX4-0001o4-Kb; Fri, 15 Oct 2021 16:58:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <keescook@chromium.org>) id 1mbQTA-0003Mj-Ah
 for jfs-discussion@lists.sourceforge.net; Fri, 15 Oct 2021 16:54:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+MbYp/9I6HwSPkAmORgtqKp7aAXKpROAHsI0KkahVSk=; b=WLdFPOwhcKv8kGpSAYeOsYLsBO
 dGaQQf9UjRV9DcfRfwWGMdLJ2Q+ZhXfqNzA8BMboiLyhvWjngfrzwuxNPoKl7IE5PxJSh8TTgD3fB
 sn5CUAPzVRFHnlNUSkruHaF6WzbLyvep5G99yfFRyRYHWFyQuVBcV9uWpPccFMfIoI+c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+MbYp/9I6HwSPkAmORgtqKp7aAXKpROAHsI0KkahVSk=; b=A3FuZ8z+40iS0enZn7AMUDWrIT
 Z+i+U5XXfQBVQUgBFk336FC0FJFd19b4vPMUohnHSCdv01q7NOB9nqt/hcRxb1vSJn+RaQHqlIjVd
 7x+VKesGk4YYJs4dhIy8Rg1+a/7Jo5oYgx2/sWiZFSs/reTR4lzHqJrWaMHc0lW/G8Jo=;
Received: from mail-pg1-f171.google.com ([209.85.215.171])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mbQT9-0001gW-KF
 for jfs-discussion@lists.sourceforge.net; Fri, 15 Oct 2021 16:54:08 +0000
Received: by mail-pg1-f171.google.com with SMTP id m21so9084190pgu.13
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 15 Oct 2021 09:54:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=+MbYp/9I6HwSPkAmORgtqKp7aAXKpROAHsI0KkahVSk=;
 b=ikEdVtNf9eRQss1RELdYd+gQGtRkJJNUyxABmsyhavxmXS/GWW1GmjaIFqcZC+V7d0
 jxPVuirO3PDa+xeNqLrVJO8s8KcCPrKVcuz5mnU+QJTWjswUytrClmIjf52ECv87VZwj
 IWYURypnyInULxZ6QO8cmc8sNxz7IQsLEMu78=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=+MbYp/9I6HwSPkAmORgtqKp7aAXKpROAHsI0KkahVSk=;
 b=rGYJIP7R4pRxs+gJnIFy4Z3VSZjrpLBGClBHB9SliFr9e81kIZECKpxlj5Wz2zheUT
 4AQAfcLNpT/vbt45QIPLoUImy5FsvqwltOiTrwlxMz6QiSzArw6EOWEiN/z0RyMghk2+
 llLrHpqJrxeFm4oxzg3odEEY10NhOSyHEL8WoEQP58yO3BUMc0epSuILKjp+BRjbCnwK
 YLYCQHbnvtdT2EtCTc8NlB/Yja9DRBF+RLJPH9ze40cch2cu7LzDr3kS9FRnOoHVlS4K
 iozzQRL8Ib5DsMbWNR8fpCPD2Wj8yHE81rO51ayceFPykC7yJ5S1VDAMlj0VgGcRQ6aR
 lZMw==
X-Gm-Message-State: AOAM530b234oyTo4V3k+JGeuaG95xJyGGKrzUkWskGj2LtkTVzFubts5
 eEmG4hN9phtI4gjFyJcSwI3cTQ==
X-Google-Smtp-Source: ABdhPJxRzD0WBfqSsRnsWWctoiC4ZL/68Vbzs2wYW5pL6AgqTKpTz7zCXFAYZWzBRrc637AgBAl43A==
X-Received: by 2002:a63:7f0e:: with SMTP id a14mr3656783pgd.390.1634316842164; 
 Fri, 15 Oct 2021 09:54:02 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id b8sm5387267pfi.103.2021.10.15.09.54.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Oct 2021 09:54:01 -0700 (PDT)
Date: Fri, 15 Oct 2021 09:54:01 -0700
From: Kees Cook <keescook@chromium.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <202110150953.4A7CC49DC@keescook>
References: <20211015132643.1621913-1-hch@lst.de>
 <20211015132643.1621913-19-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211015132643.1621913-19-hch@lst.de>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Oct 15, 2021 at 03:26:31PM +0200, Christoph Hellwig
 wrote: > Use the proper helper to read the block device size. > >
 Signed-off-by:
 Christoph Hellwig <hch@lst.de> Reviewed-by: Kees Cook <keescook@chromium.org>
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: chromium.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.171 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.215.171 listed in wl.mailspike.net]
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mbQT9-0001gW-KF
X-Mailman-Approved-At: Fri, 15 Oct 2021 16:58:08 +0000
Subject: Re: [Jfs-discussion] [PATCH 18/30] nfs/blocklayout: use
 bdev_nr_bytes instead of open coding it
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

On Fri, Oct 15, 2021 at 03:26:31PM +0200, Christoph Hellwig wrote:
> Use the proper helper to read the block device size.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
