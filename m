Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A56342F743
	for <lists+jfs-discussion@lfdr.de>; Fri, 15 Oct 2021 17:49:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mbPRz-0000Xk-1D; Fri, 15 Oct 2021 15:48:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <keescook@chromium.org>) id 1mbPPG-0007Ar-H3
 for jfs-discussion@lists.sourceforge.net; Fri, 15 Oct 2021 15:46:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XFM5WavD2dlHj0k2cmbjEUH7DswNvraUTvaUeecsFLI=; b=RYqHSKM6assM/ISXNuC5YDc+AI
 ZnRutSgp1UNZ137G/DlcW0NZ/EgHhA38Yk9Tk48l7yuPmrqogCkN30dhTqFuhF4o2gtXAWiwFNWjq
 H/7ArH5l2C268W+EzQWkrRR1hShL3+Pzp8Vrg7o6jYGuMNcgCljco98xBdCm6L5MRj6Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XFM5WavD2dlHj0k2cmbjEUH7DswNvraUTvaUeecsFLI=; b=c88KUb1V2405rx5xkFVK4WlIAM
 Wq0gfIyGeqy9Mj3dTfCqBViDznS3omFDBs76DFFA8yW7uiGQjcwq0ZC7UVPFf+HkdEQ36gy52xKy3
 67CmePlNppbQXLT9TISqdQCsnrxOBtOxs/gW4V5thiKoN3havdVQv+Te7B+ac+EQiXZg=;
Received: from mail-pl1-f171.google.com ([209.85.214.171])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mbPPB-00EnF8-BH
 for jfs-discussion@lists.sourceforge.net; Fri, 15 Oct 2021 15:46:02 +0000
Received: by mail-pl1-f171.google.com with SMTP id g5so6657643plg.1
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 15 Oct 2021 08:45:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=XFM5WavD2dlHj0k2cmbjEUH7DswNvraUTvaUeecsFLI=;
 b=kI3cmovLUq4/7b3XdGijH4QV2pLukclN+qtvDChdq76oCBSEjB/PxJ/LWqXaiWG3Ff
 e4ufh94HB0JHTcED5LMZgB7kXmiVxJYf75rZOCTtrAggeGm0/wa2OqJYCFCBhzazIF7l
 udxg7lVjqVFbJpk0sBDk4exc+CKZoXIIyRuqU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=XFM5WavD2dlHj0k2cmbjEUH7DswNvraUTvaUeecsFLI=;
 b=XQTi7cjw5sWy60n3yH5MQb8jS0LYMLpfjAqdwPaIRGcG09h66+fzh+YSqB7HIzWhI0
 f4YnM1ozJHe0FV7IadvgeGXePUXuO2ZmfIJzXabJPbcRqCeiRCMNpxqIyIMLrwWpvJ2S
 cgyd5+E2qw4WnckYtr1ZtSgbpUu3T7u7htTeqgu2D+P69+DbvngS40XU+CEugP49agcl
 rVjXpuI61P+qKIFSq2pBU43+V1eOGlTmPPQDzWJFCl++j4kx2w+B3pmk8MepIeEAUOCw
 Qw/dDF4QY+Ys3/kIamqFPJEvL8eLRVVl3phtmaVxMzVmFmZ5VImx17mXTHuCf0hLYqQA
 0kaQ==
X-Gm-Message-State: AOAM532m5LuRaX4LvYrE8/AUGs7bdaQlqAIizSlVBe2Ldqz01a48fuB3
 cEl/2eSXm7UW6ZjVYLhUm9Dixw==
X-Google-Smtp-Source: ABdhPJwzQs+V6r1hPLOTwtZOgiRq0ZYBjWTuzen8H9dNT74QaE01sJDiES/7Q1kbrrYk+yq2JOau2g==
X-Received: by 2002:a17:90a:86:: with SMTP id
 a6mr28243106pja.190.1634312751709; 
 Fri, 15 Oct 2021 08:45:51 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id g17sm5328859pfu.22.2021.10.15.08.45.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Oct 2021 08:45:51 -0700 (PDT)
Date: Fri, 15 Oct 2021 08:45:50 -0700
From: Kees Cook <keescook@chromium.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <202110150845.29BA04E647@keescook>
References: <20211015132643.1621913-1-hch@lst.de>
 <20211015132643.1621913-2-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211015132643.1621913-2-hch@lst.de>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Oct 15, 2021 at 03:26:14PM +0200, Christoph Hellwig
 wrote: > Ensure these are always available for inlines in the various block
 layer > headers. > > Signed-off-by: Christoph Hellwig <hch@lst.d [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: chromium.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.171 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.214.171 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mbPPB-00EnF8-BH
X-Mailman-Approved-At: Fri, 15 Oct 2021 15:48:49 +0000
Subject: Re: [Jfs-discussion] [PATCH 01/30] block: move the SECTOR_SIZE
 related definitions to blk_types.h
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

On Fri, Oct 15, 2021 at 03:26:14PM +0200, Christoph Hellwig wrote:
> Ensure these are always available for inlines in the various block layer
> headers.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Awesome, yes. Thanks!

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
