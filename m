Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C02242CCB4
	for <lists+jfs-discussion@lfdr.de>; Wed, 13 Oct 2021 23:20:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1malfh-000760-Mh; Wed, 13 Oct 2021 21:20:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <song@kernel.org>)
 id 1malaS-0002j0-Dg; Wed, 13 Oct 2021 21:14:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GNMuazvAc4LKzA11EtG8eLgr12NNdEoTIw6YmGY7ihs=; b=X1Yt9ffhJ1B9mcMaMGxqYZA3gd
 Qr11NJSt7SCtHjqsTR7tqUAGzAUTntD+iZ3jGXK3WgyU6lVsMeT/MkQM1bKcLSFuLuEADyfqxcypd
 c8/Snj9cj/SHe8aIOVuf8gPuzpa1m4Zv+QiIMcOv2OtoKpUbteKXOMhnMonq0UZRV7D4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GNMuazvAc4LKzA11EtG8eLgr12NNdEoTIw6YmGY7ihs=; b=K+FcuKIfcsNQLgPTq/OSBo3Vn2
 d3sf4hSH2ajPyp+2Fl962fP8QQ5WsAJ9TbQCH45fv60oYCCedxUVeyzVVDXhEq2GIPfdcL6Nzhujg
 /vhIvygEVjUPz+OxNIcz0tlFdoztODNnq4dfGA5ExUSNAJhxJeMeZtlE7d+lwEiTv39A=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1malaR-0008Hv-Sf; Wed, 13 Oct 2021 21:14:56 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9B36061163;
 Wed, 13 Oct 2021 21:14:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1634159685;
 bh=SlbEmP0SftpYg5Qzgl+3uhbNwtKN42MS1eJbqRVvz8o=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=hiKscGct16rhTAVFUvB8ulUGFNYX0XJpF+2YqPKF0No0/OTxa8B+FbCYvPeznM3IT
 o7+9DVjPYoKAxa50QdWsJ1gL4J+4wBU1jNZrm6P/FvNKQ8G7E2qrXO9VM2GBzVJvw8
 S/gFZjYpmMou1VruRE19i94wuylZi24lJbQ6yAN6OeRqXntYIE5B0JYh+T/uz9ctke
 L86OtKTf7XCkJxLOyXfeIFv5kZLrR3s6zlWx8Mcxq8cYKDBsASwSQxb8GUZPcnzqgT
 VFHmPHbz4NrsEHQ/qmk1iEmYL+m9W0ImnKdxKKKAOXKE+hMXaoTAVCJomjq0s1kTjo
 7pgsY+NMeWiSg==
Received: by mail-lf1-f50.google.com with SMTP id u18so17428159lfd.12;
 Wed, 13 Oct 2021 14:14:45 -0700 (PDT)
X-Gm-Message-State: AOAM530T4yMfcKwQ95x1GI59V7ELO7c98TaqiLW9N4hvLnULhRAKqXiU
 3WC+yagbNP3MtLoAgdjhvHIO8frb2ycJbT4V2rg=
X-Google-Smtp-Source: ABdhPJy4PwudaFsA5k7zIKbmlSW7M8/j3iWHJKEthDYdjnMO754KPa3JLlK+wmXJkye7TEJ2vXHzCCixulymuZnDiqk=
X-Received: by 2002:a2e:6e0b:: with SMTP id j11mr1736234ljc.527.1634159683768; 
 Wed, 13 Oct 2021 14:14:43 -0700 (PDT)
MIME-Version: 1.0
References: <20211013051042.1065752-1-hch@lst.de>
 <20211013051042.1065752-5-hch@lst.de>
 <202110122311.B43459E21@keescook>
In-Reply-To: <202110122311.B43459E21@keescook>
From: Song Liu <song@kernel.org>
Date: Wed, 13 Oct 2021 14:14:32 -0700
X-Gmail-Original-Message-ID: <CAPhsuW6MFRmKfpUxLL3=TRAgNTuTMFySc=_-NA7YOWDAvYAxyQ@mail.gmail.com>
Message-ID: <CAPhsuW6MFRmKfpUxLL3=TRAgNTuTMFySc=_-NA7YOWDAvYAxyQ@mail.gmail.com>
To: Kees Cook <keescook@chromium.org>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Oct 12,
 2021 at 11:12 PM Kees Cook <keescook@chromium.org>
 wrote: > > On Wed, Oct 13, 2021 at 07:10:17AM +0200, Christoph Hellwig wrote:
 > > Use the proper helper to read the block device size [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1malaR-0008Hv-Sf
X-Mailman-Approved-At: Wed, 13 Oct 2021 21:20:20 +0000
Subject: Re: [Jfs-discussion] [PATCH 04/29] md: use bdev_nr_sectors instead
 of open coding it
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
 dm-devel@redhat.com, target-devel@vger.kernel.org,
 linux-mtd@lists.infradead.org, reiserfs-devel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, drbd-dev@lists.linbit.com,
 linux-nilfs@vger.kernel.org, linux-scsi@vger.kernel.org,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>, linux-ext4@vger.kernel.org,
 Josef Bacik <josef@toxicpanda.com>, Coly Li <colyli@suse.de>,
 linux-raid <linux-raid@vger.kernel.org>, linux-bcache@vger.kernel.org,
 David Sterba <dsterba@suse.com>, Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 Anton Altaparmakov <anton@tuxera.com>, Jens Axboe <axboe@kernel.dk>,
 linux-block@vger.kernel.org, linux-nfs@vger.kernel.org,
 Theodore Ts'o <tytso@mit.edu>, linux-ntfs-dev@lists.sourceforge.net,
 Jan Kara <jack@suse.com>, Linux-Fsdevel <linux-fsdevel@vger.kernel.org>,
 Phillip Lougher <phillip@squashfs.org.uk>, ntfs3@lists.linux.dev,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Tue, Oct 12, 2021 at 11:12 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Wed, Oct 13, 2021 at 07:10:17AM +0200, Christoph Hellwig wrote:
> > Use the proper helper to read the block device size.
> >
> > Signed-off-by: Christoph Hellwig <hch@lst.de>
>
> I think it might make sense, as you suggest earlier, to add a "bytes"
> helper. This is the first user in the series needing:
>
>         bdev_nr_sectors(...bdev) << SECTOR_SHIFT
>
> Reviewed-by: Kees Cook <keescook@chromium.org>

Acked-by: Song Liu <song@kernel.org>


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
