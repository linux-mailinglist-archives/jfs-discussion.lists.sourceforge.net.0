Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BACC842F971
	for <lists+jfs-discussion@lfdr.de>; Fri, 15 Oct 2021 18:58:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mbQX3-0001nm-Qc; Fri, 15 Oct 2021 16:58:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <keescook@chromium.org>) id 1mbQRF-0001bw-Qo
 for jfs-discussion@lists.sourceforge.net; Fri, 15 Oct 2021 16:52:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8gI6mB0v8/bvGUktJ4Ms64SCq44VzGlslt0/tVmUcu0=; b=eRN0Lz1ZUThjcKsp47trZLrAOk
 PgfExWq0neyhsn2/0RyikX+gVAlMshiDZgBaApUI7Vyq2sGo+VIqMFXvm0VyLMB0FBuJ/men5QqTP
 GZoadjPjfUkTNU2Jk0Dv33B/HPKgzSFWOXIHX8e6i2Oa871kaFO8Q+FLj+dlPXgcCC1U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8gI6mB0v8/bvGUktJ4Ms64SCq44VzGlslt0/tVmUcu0=; b=MJ1uZwtE78RpZCdE4Nyr8iQFGf
 jM1ktFgAfh9GIXGAXBi+1Vpvv8RnjJrxRyKfoXYnDJEQmy9Q/xSec/CBY3M+2Qis8/vs6F66AkA1I
 uO1dSYJQRis6CKzGJxmP2LOgnlMx7FDgrqMB8WtxHBF349Zvh5EIOoQYpgd7nJ37iFzI=;
Received: from mail-pg1-f170.google.com ([209.85.215.170])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mbQRC-00Evf7-09
 for jfs-discussion@lists.sourceforge.net; Fri, 15 Oct 2021 16:52:09 +0000
Received: by mail-pg1-f170.google.com with SMTP id e65so6711783pgc.5
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 15 Oct 2021 09:52:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=8gI6mB0v8/bvGUktJ4Ms64SCq44VzGlslt0/tVmUcu0=;
 b=QdjfyqDFD4soQMEMSOicdhBdVamKBaYeLFRjv2+GeJkhkobBQ1wXcffRbrMri+SgXS
 ho2ZSrthIeYBE7Wx2MPp5VyuPKs5uKhB2/hHDVUacoeny7NW+A6nzAebO0KCgT+nfajN
 4woprmqITLxBlJcOq6oS9FryrMRcuTjaoqcfg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=8gI6mB0v8/bvGUktJ4Ms64SCq44VzGlslt0/tVmUcu0=;
 b=SRFQHomMq0P327NXrv0WXtbkWT1SJbfVdy28cCODBvOIVs9/9QDLujx+bEm6H8aCFI
 OBXvtQUb7xn2xt4/XGHQ4UB/tTXeDXDhIHn4L6l0wULfqwgEnf+mkkWXYhZmwEf9zzXU
 hIJWv35xuvaB01W7Kl/vmyqHWz5c2DW+ohsWxfJ0N3rS2BPhdUtrr5oMJUdGQ/5ZFktz
 WC8dZY10Pacj2ekKagkDyJHZncZ3LwDHcDzXUkF4YCA/TzqEU96TMN1LrUoF4lZknnIK
 xHI6+gXePXW9UlEyW/UQGdX/oa3DNvtfuG5cSgVOsVEBYBXrUaubeyj4hIBzbUO6bblm
 U2aA==
X-Gm-Message-State: AOAM531/CWJazbJ7KzWtilkXgpLFJgj7szajzZYAfVvEyQBdMbQ1H+EB
 uGw0BqzGFlpML3iRF/2XgPRsUA==
X-Google-Smtp-Source: ABdhPJzqeoukQXK8ExXBqth3GcTvhtURMxE+sN7W7wsB5KXgmz+OQ2/XE0rohu9GSzNW6fPwLJfBIw==
X-Received: by 2002:a05:6a00:1a15:b0:44d:a80:a194 with SMTP id
 g21-20020a056a001a1500b0044d0a80a194mr12521866pfv.78.1634316717195; 
 Fri, 15 Oct 2021 09:51:57 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id w18sm5617464pfj.170.2021.10.15.09.51.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Oct 2021 09:51:56 -0700 (PDT)
Date: Fri, 15 Oct 2021 09:51:56 -0700
From: Kees Cook <keescook@chromium.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <202110150951.94FEBC4C@keescook>
References: <20211015132643.1621913-1-hch@lst.de>
 <20211015132643.1621913-14-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211015132643.1621913-14-hch@lst.de>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Oct 15, 2021 at 03:26:26PM +0200, Christoph Hellwig
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
 valid 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.170 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.170 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mbQRC-00Evf7-09
X-Mailman-Approved-At: Fri, 15 Oct 2021 16:58:08 +0000
Subject: Re: [Jfs-discussion] [PATCH 13/30] cramfs: use bdev_nr_bytes
 instead of open coding it
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

On Fri, Oct 15, 2021 at 03:26:26PM +0200, Christoph Hellwig wrote:
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
