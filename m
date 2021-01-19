Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 609F52FB9CA
	for <lists+jfs-discussion@lfdr.de>; Tue, 19 Jan 2021 15:50:54 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l1sL8-0002D0-U1; Tue, 19 Jan 2021 14:50:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <msnitzer@redhat.com>) id 1l1rma-0003z9-HW
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 14:14:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2ycJhE8mXTZkoJTspQiF4eAdjjIOqaHJTzxw51QUBpw=; b=UcfJdPoyR+y3ZpcOqIT1rvQ6Z7
 2V46lEM/nYo/cydyv6rcS/BQbGm7zFeuZaM+/EcPtqq5yYPZwtFGHRE4g0aJM/w2b6HNlyMEAIE1L
 1UaVYJ9tdjErJoKamBSXShuRxx+5YzdFAERLuvUDF6amr1D0Pv/LxktxJCMVl3QVXrbo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2ycJhE8mXTZkoJTspQiF4eAdjjIOqaHJTzxw51QUBpw=; b=k8Yu0AI2RGlYAb+FK57SyLeQgb
 iF3G3rsEOuhjd52fo9NxLKd5vxCTIHXt5vKuc/YOU6l9OCPq5d5KZPPo1SoEV9VodP1p0stWX5uqA
 veSq3mwsjdcOJCi4BcWMCyhSy0OPI8kRCqPyoDejrIMHvL11z/ONasAuOx1c5r9L8lwM=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1l1rmU-00Eq39-3l
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 14:14:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1611065677;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2ycJhE8mXTZkoJTspQiF4eAdjjIOqaHJTzxw51QUBpw=;
 b=BKko4A1TkBToUCPlHxeXndNj2zI3vDM7eUCyfRUbiveNkCgPvOxaKANIk/fe0yNAh/BPzH
 z5gZenv1p0nIqNGG6P+KXW1JO4Nnq9UYVGINeE7s8FXM5VLfsYK2CQoqH+2nd5xljjDSfx
 mPwJZNRIm7M/Lyfakm7qjDBNyZEsusU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-504-Na2rrFESP2-59Jhvxs6BgA-1; Tue, 19 Jan 2021 09:14:34 -0500
X-MC-Unique: Na2rrFESP2-59Jhvxs6BgA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B9A58806661;
 Tue, 19 Jan 2021 14:14:29 +0000 (UTC)
Received: from localhost (unknown [10.18.25.174])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 2AA0D19C47;
 Tue, 19 Jan 2021 14:14:23 +0000 (UTC)
Date: Tue, 19 Jan 2021 09:14:22 -0500
From: Mike Snitzer <snitzer@redhat.com>
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Message-ID: <20210119141422.GA23758@redhat.com>
References: <20210119050631.57073-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210119050631.57073-1-chaitanya.kulkarni@wdc.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1l1rmU-00Eq39-3l
X-Mailman-Approved-At: Tue, 19 Jan 2021 14:50:37 +0000
Subject: Re: [Jfs-discussion] [RFC PATCH 00/37] block: introduce
 bio_init_fields()
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
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 gustavo@embeddedor.com, linux-nvme@lists.infradead.org,
 philipp.reisner@linbit.com, song@kernel.org, dm-devel@redhat.com,
 target-devel@vger.kernel.org, adilger.kernel@dilger.ca, hch@lst.de,
 agk@redhat.com, drbd-dev@lists.linbit.com, naohiro.aota@wdc.com,
 sagi@grimberg.me, linux-scsi@vger.kernel.org, darrick.wong@oracle.com,
 osandov@fb.com, cluster-devel@redhat.com, linux-ext4@vger.kernel.org,
 kent.overstreet@gmail.com, josef@toxicpanda.com, efremov@linux.com,
 colyli@suse.de, linux-raid@vger.kernel.org, rpeterso@redhat.com,
 linux-bcache@vger.kernel.org, viro@zeniv.linux.org.uk, dsterba@suse.com,
 bvanassche@acm.org, agruenba@redhat.com, axboe@kernel.dk,
 linux-block@vger.kernel.org, damien.lemoal@wdc.com, tytso@mit.edu,
 martin.petersen@oracle.com, clm@fb.com, linux-kernel@vger.kernel.org,
 linux-xfs@vger.kernel.org, jefflexu@linux.alibaba.com,
 linux-fsdevel@vger.kernel.org, tj@kernel.org, lars.ellenberg@linbit.com,
 jth@kernel.org, asml.silence@gmail.com, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Tue, Jan 19 2021 at 12:05am -0500,
Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com> wrote:

> Hi,
> =

> This is a *compile only RFC* which adds a generic helper to initialize
> the various fields of the bio that is repeated all the places in
> file-systems, block layer, and drivers.
> =

> The new helper allows callers to initialize various members such as
> bdev, sector, private, end io callback, io priority, and write hints.
> =

> The objective of this RFC is to only start a discussion, this it not =

> completely tested at all. =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
> Following diff shows code level benefits of this helper :-
> =C2=A038 files changed, 124 insertions(+), 236 deletions(-)


Please no... this is just obfuscation.

Adding yet another field to set would create a cascade of churn
throughout kernel (and invariably many callers won't need the new field
initialized, so you keep passing 0 for more and more fields).

Nacked-by: Mike Snitzer <snitzer@redhat.com>



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
