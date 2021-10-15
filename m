Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ABADA42F82D
	for <lists+jfs-discussion@lfdr.de>; Fri, 15 Oct 2021 18:31:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mbQ7L-0001l9-6g; Fri, 15 Oct 2021 16:31:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <keescook@chromium.org>) id 1mbPSr-0000bU-QE
 for jfs-discussion@lists.sourceforge.net; Fri, 15 Oct 2021 15:49:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ph+oZ8UT4h1HTx6qQ3UwPOnmmXuejFlF+FpHdhVkhfw=; b=fsOXKUW3b3jXxefTs/YNQKQbcf
 DNwCsvO9btRReZOMqYGn4K+lJGcwWRILEql4HnOOjfEwV3D1Rnnak1pZk0EttxPX3JiFZ+nL9PiWZ
 nJERJ48EjZmfGhdLYCv5whnt5W4aRTDgMgmD5eVbwXD/XsGJahvsRLK798b/30cfx5+8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ph+oZ8UT4h1HTx6qQ3UwPOnmmXuejFlF+FpHdhVkhfw=; b=FCPjERqscsqRk6iG6cZDmAE3EM
 8PPj/mOCvSzR/SdAIBOaaONkX4Cb9gHPandtiXKcd2xo2oTz29ldbZn7hFgIxWqyIyKksvA+eZId4
 H0uof0Ibgei9UhxlIo03F7O6aKiSnwQNIaghzac0Mb8hCbapTRV7o3w/IdHp3ASXW+jw=;
Received: from mail-pj1-f46.google.com ([209.85.216.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mbPSn-0001u6-Uy
 for jfs-discussion@lists.sourceforge.net; Fri, 15 Oct 2021 15:49:45 +0000
Received: by mail-pj1-f46.google.com with SMTP id
 nn3-20020a17090b38c300b001a03bb6c4ebso7588063pjb.1
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 15 Oct 2021 08:49:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Ph+oZ8UT4h1HTx6qQ3UwPOnmmXuejFlF+FpHdhVkhfw=;
 b=iSbFTO7hl5wsHi/v9726DpD3kjwHBmUweM5nSVDlyWBslMc3wVKEMvQCq5pVO/6MpZ
 QpL/26LdJe7GrULqRDxfawSnvbruhiXNd7VKIbgGj0HAHUSD4T22YVTuGUCVLgeYQ9DD
 YRPQKjchN3EU8Gz5xfRwkBHxJQvIPm4lQcdPQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Ph+oZ8UT4h1HTx6qQ3UwPOnmmXuejFlF+FpHdhVkhfw=;
 b=rOWuLThGwnLsla8eF0WAJ/2GC2Ge7YgUe0Bfuh02EzgKszIw7d1Jndl5t/lWyaxANV
 NJYsOTLflzXs7hAuH0DeG5d/zQN3qv74taiRfxtSKcD0vpzZ/NHYff9QsMdIue/DvNMa
 pdwz+kbJWfJmsTWoG322EXLEXCtRUvnIRiO2k16ZZqdYBcR2SOwuN2wE6FKLyZtmyUom
 bpUC98uXbOaqIqxY+xJoVu4qrSHZxLrsSYKIt4nMu31T/DLPru0n4yaIE9cVaqBdLH0i
 hp4aaloKMLRo0xE767AlWKZLH5S9UeLudIYm/xMWYgUmZp58sEz6lAv22kKEhuiUufCM
 0PTw==
X-Gm-Message-State: AOAM533+v3C0kyTAgojXxSf2A+IOwnJS7xzmLmG4mK9v+5Me43VKkQaQ
 7U1PDvgN9EENpvyWfqGL5Qy4qw==
X-Google-Smtp-Source: ABdhPJz6i9tGVLgkq0eULPGyuk5x/dLn8xi+sif8q9XJ9Fat4Z2U3sGqOIlP99kszRnqXPDgBVaPnw==
X-Received: by 2002:a17:903:234d:b0:13f:3180:626a with SMTP id
 c13-20020a170903234d00b0013f3180626amr11815749plh.49.1634312976314; 
 Fri, 15 Oct 2021 08:49:36 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id v22sm5451930pff.93.2021.10.15.08.49.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Oct 2021 08:49:35 -0700 (PDT)
Date: Fri, 15 Oct 2021 08:49:35 -0700
From: Kees Cook <keescook@chromium.org>
To: Anton Altaparmakov <anton@tuxera.com>
Message-ID: <202110150848.375151B3@keescook>
References: <20211015132643.1621913-1-hch@lst.de>
 <20211015132643.1621913-3-hch@lst.de>
 <7C4AC4BD-B62D-41B3-AAF7-46125D1A1146@tuxera.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7C4AC4BD-B62D-41B3-AAF7-46125D1A1146@tuxera.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Oct 15, 2021 at 02:37:41PM +0000, Anton Altaparmakov
 wrote: > Hi Christoph, > > > On 15 Oct 2021, at 14:26, Christoph Hellwig
 <hch@lst.de> wrote: > > > > Add a helpe to query the size of a blo [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
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
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.46 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.46 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: chromium.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mbPSn-0001u6-Uy
X-Mailman-Approved-At: Fri, 15 Oct 2021 16:31:33 +0000
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
Cc: Dave Kleikamp <shaggy@kernel.org>, "jfs-discussion@lists.sourceforge.net"
 <jfs-discussion@lists.sourceforge.net>, Mike Snitzer <snitzer@redhat.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 Song Liu <song@kernel.org>, "dm-devel@redhat.com" <dm-devel@redhat.com>,
 "target-devel@vger.kernel.org" <target-devel@vger.kernel.org>,
 "reiserfs-devel@vger.kernel.org" <reiserfs-devel@vger.kernel.org>,
 Christoph Hellwig <hch@lst.de>,
 "drbd-dev@lists.linbit.com" <drbd-dev@lists.linbit.com>,
 "linux-nilfs@vger.kernel.org" <linux-nilfs@vger.kernel.org>,
 "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "linux-ext4@vger.kernel.org" <linux-ext4@vger.kernel.org>,
 Josef Bacik <josef@toxicpanda.com>, Coly Li <colyli@suse.de>,
 "linux-raid@vger.kernel.org" <linux-raid@vger.kernel.org>,
 "linux-bcache@vger.kernel.org" <linux-bcache@vger.kernel.org>,
 David Sterba <dsterba@suse.com>, Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>, Jens Axboe <axboe@kernel.dk>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 "linux-nfs@vger.kernel.org" <linux-nfs@vger.kernel.org>,
 Theodore Ts'o <tytso@mit.edu>,
 "linux-ntfs-dev@lists.sourceforge.net" <linux-ntfs-dev@lists.sourceforge.net>,
 Jan Kara <jack@suse.com>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 Phillip Lougher <phillip@squashfs.org.uk>,
 "ntfs3@lists.linux.dev" <ntfs3@lists.linux.dev>,
 "linux-btrfs@vger.kernel.org" <linux-btrfs@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Fri, Oct 15, 2021 at 02:37:41PM +0000, Anton Altaparmakov wrote:
> Hi Christoph,
> 
> > On 15 Oct 2021, at 14:26, Christoph Hellwig <hch@lst.de> wrote:
> > 
> > Add a helpe to query the size of a block device in bytes.  This
> > will be used to remove open coded access to ->bd_inode.
> 
> Matthew already pointed out the return type for bdev_nr_bytes() but also your commit message has a typo: "Add a helpe" -> "Add a helper".

Right. With these fixed, I'm a fan. :)

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

-- 
Kees Cook


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
