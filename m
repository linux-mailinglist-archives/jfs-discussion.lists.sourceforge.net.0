Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A070D42C701
	for <lists+jfs-discussion@lfdr.de>; Wed, 13 Oct 2021 18:57:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mahZV-0005fo-6T; Wed, 13 Oct 2021 16:57:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <snitzer@redhat.com>) id 1mahLf-0007mA-Rk
 for jfs-discussion@lists.sourceforge.net; Wed, 13 Oct 2021 16:43:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:In-Reply-To:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DvE9A+LL2XADoLsMv/QT6HGglilUC7cXAXtJNsfa8lA=; b=K+ClEyTfcbJ1J7K+3nz//iCW1T
 5MAIZmYwTPBzqo6I8u3mI1yeUa3jK0IrCb/58Sd+IlJmX3iaQarDHoQPXdTglrLtlBX896aUAnO9Q
 VOrUbiqZKK9jG0gFkqTyrePWU8Fve/ejz995NyqdORQjGzTsXyeFAMHYlqLKthe9I/w8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DvE9A+LL2XADoLsMv/QT6HGglilUC7cXAXtJNsfa8lA=; b=bEdBGHAXr+JSM5Nycjj03uCQt6
 LXAzeLVSV0ge6QJc3/CI9H+89N8uQQENUqyJU74icYQU6Jz3Avc2joyH2BpJZWcatSDenKqjKZC7q
 L0AiyOqhx2t22jhZRke+cBJSkDpy92gMu51KLVAqRl6TzRzr2L+B1S0Ow7vVC5qxGofY=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mahLf-008lKG-Ad
 for jfs-discussion@lists.sourceforge.net; Wed, 13 Oct 2021 16:43:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634143397;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=DvE9A+LL2XADoLsMv/QT6HGglilUC7cXAXtJNsfa8lA=;
 b=f/s+gXimjLwSNfhiur1ZGhhT9g7DXU+Mxp0V/paWn4zvXi4yNJCKLjQeHTy9bZM2duOaUv
 KuSaerP4ABfoH/kd51u3nU5IoSsHeEiMftTY3g0iA7z32tUhI+u2mvhpAI//E4nm8k/F1C
 PSuoJpBSCkloXh1VChZSPWIu8TVUBvw=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-516-1q9mmMOMPJKAR4a9y4z_WQ-1; Wed, 13 Oct 2021 12:43:14 -0400
X-MC-Unique: 1q9mmMOMPJKAR4a9y4z_WQ-1
Received: by mail-qt1-f199.google.com with SMTP id
 x28-20020ac8701c000000b0029f4b940566so2465583qtm.19
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 13 Oct 2021 09:43:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=DvE9A+LL2XADoLsMv/QT6HGglilUC7cXAXtJNsfa8lA=;
 b=dR+xPJkAefQmCnDSUFRbuG3S5MWhuT1OXo0Tv4NNIVOJKMojH7nfvD0qMQmAx2aMBQ
 FV9rM/my9FtdodcPyRS1qem/OrLBcQtyN52niA8sSfv5yaX8VTa8p+IJg9Vbvhk+GnLX
 VKVguSldrEyqtDqiq8I03xaSxn2tNP7G/Rx+FnG2G0ItbtzS3VXuDN2VLGH3zJcUrMDa
 knrr1XOgLB+yIcWGQNPuVDo6ZYiyHdBFZxYaVjhSrOp/rOiJKguLvimrhCFTH81dc8xb
 +g44dDlJhcBJCwXKOqbolRA1qS7sFWwr+JqQi7YCQAwOBomVwNEDfY5zonxapPvgcI4d
 cH2Q==
X-Gm-Message-State: AOAM532L8Ld/h1moeGBfVgzORNnYpQb45LHA//MdsZ/6JOTIbfWEbqcM
 kgf15nePFqfirY94pd9lZpTYIHV3iQ8lWgqE+soouH2aKRb4+LeKn8dR9JoR/4T4i5NKbEbBV44
 4Wpx6oqs24rPTHslRe3w3x7abbkThWskErw==
X-Received: by 2002:ac8:7d02:: with SMTP id g2mr450212qtb.66.1634143393832;
 Wed, 13 Oct 2021 09:43:13 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy4uQGBl82DdkygPL4oygkwPDtljuRYBV8+ESqW4tKnOahM7pZ+SYljUTQ3BKpa4FdVi33PjA==
X-Received: by 2002:ac8:7d02:: with SMTP id g2mr450159qtb.66.1634143393507;
 Wed, 13 Oct 2021 09:43:13 -0700 (PDT)
Received: from localhost ([45.130.83.141])
 by smtp.gmail.com with ESMTPSA id q14sm77870qtl.73.2021.10.13.09.43.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Oct 2021 09:43:13 -0700 (PDT)
Date: Wed, 13 Oct 2021 12:43:12 -0400
From: Mike Snitzer <snitzer@redhat.com>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <YWcMoCZxfpUzKZQ+@redhat.com>
References: <20211013051042.1065752-1-hch@lst.de>
 <20211013051042.1065752-4-hch@lst.de>
MIME-Version: 1.0
In-Reply-To: <20211013051042.1065752-4-hch@lst.de>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=snitzer@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Oct 13 2021 at 1:10P -0400,
 Christoph Hellwig <hch@lst.de>
 wrote: > Use the proper helper to read the block device size. > >
 Signed-off-by:
 Christoph Hellwig <hch@lst.de> Acked-by: Mike Snitzer <snitzer@redhat.com>
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mahLf-008lKG-Ad
X-Mailman-Approved-At: Wed, 13 Oct 2021 16:57:39 +0000
Subject: Re: [Jfs-discussion] [PATCH 03/29] dm: use bdev_nr_sectors instead
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
Cc: jfs-discussion@lists.sourceforge.net, linux-nvme@lists.infradead.org,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 dm-devel@redhat.com, target-devel@vger.kernel.org,
 linux-mtd@lists.infradead.org, reiserfs-devel@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-nilfs@vger.kernel.org,
 linux-scsi@vger.kernel.org, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
 linux-ext4@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 Josef Bacik <josef@toxicpanda.com>, Coly Li <colyli@suse.de>,
 linux-block@vger.kernel.org, linux-bcache@vger.kernel.org,
 David Sterba <dsterba@suse.com>, Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 Anton Altaparmakov <anton@tuxera.com>, Jens Axboe <axboe@kernel.dk>,
 linux-raid@vger.kernel.org, linux-nfs@vger.kernel.org,
 Theodore Ts'o <tytso@mit.edu>, linux-ntfs-dev@lists.sourceforge.net,
 Jan Kara <jack@suse.com>, linux-fsdevel@vger.kernel.org,
 Phillip Lougher <phillip@squashfs.org.uk>, ntfs3@lists.linux.dev,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Wed, Oct 13 2021 at  1:10P -0400,
Christoph Hellwig <hch@lst.de> wrote:

> Use the proper helper to read the block device size.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Acked-by: Mike Snitzer <snitzer@redhat.com>



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
