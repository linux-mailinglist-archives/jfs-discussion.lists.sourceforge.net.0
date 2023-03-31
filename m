Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DDDA16D276E
	for <lists+jfs-discussion@lfdr.de>; Fri, 31 Mar 2023 20:00:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1piJ35-0005ef-NJ;
	Fri, 31 Mar 2023 18:00:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <song@kernel.org>) id 1piJ34-0005eZ-43
 for jfs-discussion@lists.sourceforge.net;
 Fri, 31 Mar 2023 18:00:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9tXVcu579pVEe31v3uq18Kz/aIIJc6OZT76XuWimyYY=; b=NzaFDRvhwh5jBPsrbyurQzMmcO
 dZnun7oQhAAdQXf+T0Zdg/cxAnDPIH8p34RNQpaNfhymGHnfThxcde7FR7d8ZjtSRdyeGKo/Mn+Ou
 HiV49mCyxXBRtD6389XAJQogNo+P5EEnvm27GbSnyAJxt36KW1VS3kG1Snn+mYmXvvj4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9tXVcu579pVEe31v3uq18Kz/aIIJc6OZT76XuWimyYY=; b=mBvMBZDQXQD56ttzfaP5/A6lmT
 pS+2UgoERbCgwphhwI6wjdzamg8gGPFnbPmI7sfhzB/kvJ4WN2JEV2/ACWX/T/2izyur552znbx/Q
 UCO7LQUgHvnv8tHBTLwvSOXqkQ8fQGmZQFuSoiA5+CDgmdL/xm2ivanm+/B1OPa6UVYg=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1piJ2y-00B7rT-03 for jfs-discussion@lists.sourceforge.net;
 Fri, 31 Mar 2023 18:00:25 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 62A1B62B18
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 31 Mar 2023 18:00:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3694DC4339C
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 31 Mar 2023 18:00:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1680285611;
 bh=9tXVcu579pVEe31v3uq18Kz/aIIJc6OZT76XuWimyYY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=YgNZHmOLXZ1VOoy/QrY5pCHfzk02sSFrQTFY8GMr48v+dR8Qt80AuSqjMT9CMiyQP
 ysZNr5rNQY3tgaZGR4Y4E1KmqnncUybRBlI9djM6dnMAKa0tGiX2HdStla1bqU8Rui
 SX81lbv3qxEedlQfzWSfKo2BQGXsCELkmxicunMqhmL9LK/7cwUaFfqONAQAgbsMka
 lq0p/rO2GGulMBtdSYkbfCG6qYULmX+4wfIogx/OKsjD4vMqSwXtkoGVEEvklS8Xlc
 lwmpE8dJGYL0g76IAqUKiRhYvDAfDoXONYgDuBSUCv3CEfs4DoVFQS7aOkePgsQ0J5
 lFU05B2XGayvg==
Received: by mail-lj1-f182.google.com with SMTP id b6so3873191ljr.1
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 31 Mar 2023 11:00:11 -0700 (PDT)
X-Gm-Message-State: AAQBX9dP5EYCOW8KK32euVlF/xtqckQLkalrSYzun6U7a3QXc+50n8Je
 oaphyqtTauRy52y+cLMO04EkQIlmuTDK0WTdhTo=
X-Google-Smtp-Source: AKy350ZgbNojOjOEEz2nHphY2xJCW9wwsXYrrgwE3PRrjnKQvmDG5MKMnwlOL72DBVmaW0fPmBMmrb5gTNKFPGLQqzY=
X-Received: by 2002:a2e:a556:0:b0:29b:d43f:f68f with SMTP id
 e22-20020a2ea556000000b0029bd43ff68fmr5465915ljn.5.1680285609272; Fri, 31 Mar
 2023 11:00:09 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1680172791.git.johannes.thumshirn@wdc.com>
 <4c9eaedd34f80d3477a5049f49610a8da8859744.1680172791.git.johannes.thumshirn@wdc.com>
In-Reply-To: <4c9eaedd34f80d3477a5049f49610a8da8859744.1680172791.git.johannes.thumshirn@wdc.com>
From: Song Liu <song@kernel.org>
Date: Fri, 31 Mar 2023 10:59:57 -0700
X-Gmail-Original-Message-ID: <CAPhsuW7AAKXuPtvfjR-UBq=QCbHOkqCQQk=GTAWZH0ysVxhECQ@mail.gmail.com>
Message-ID: <CAPhsuW7AAKXuPtvfjR-UBq=QCbHOkqCQQk=GTAWZH0ysVxhECQ@mail.gmail.com>
To: Johannes Thumshirn <johannes.thumshirn@wdc.com>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, Mar 30, 2023 at 3:44 AM Johannes Thumshirn <johannes.thumshirn@wdc.com>
    wrote: > > The sync request code uses bio_add_page() to add a page to a newly
    created bio. > bio_add_page() can fail, [...] 
 
 Content analysis details:   (-5.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1piJ2y-00B7rT-03
Subject: Re: [Jfs-discussion] [PATCH v2 16/19] md: raid1: use __bio_add_page
 for adding single page to bio
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
Cc: Jens Axboe <axboe@kernel.dk>, linux-raid@vger.kernel.org,
 Damien Le Moal <damien.lemoal@wdc.com>, cluster-devel@redhat.com,
 Chaitanya Kulkarni <kch@nvidia.com>, Andreas Gruenbacher <agruenba@redhat.com>,
 Dave Kleikamp <shaggy@kernel.org>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Mike Snitzer <snitzer@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Matthew Wilcox <willy@infradead.org>, Ming Lei <ming.lei@redhat.com>,
 linux-block@vger.kernel.org, linux-mm@kvack.org, dm-devel@redhat.com,
 David Sterba <dsterba@suse.com>, Hannes Reinecke <hare@suse.de>,
 linux-fsdevel@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 linux-btrfs@vger.kernel.org, Bob Peterson <rpeterso@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gVGh1LCBNYXIgMzAsIDIwMjMgYXQgMzo0NOKAr0FNIEpvaGFubmVzIFRodW1zaGlybgo8am9o
YW5uZXMudGh1bXNoaXJuQHdkYy5jb20+IHdyb3RlOgo+Cj4gVGhlIHN5bmMgcmVxdWVzdCBjb2Rl
IHVzZXMgYmlvX2FkZF9wYWdlKCkgdG8gYWRkIGEgcGFnZSB0byBhIG5ld2x5IGNyZWF0ZWQgYmlv
Lgo+IGJpb19hZGRfcGFnZSgpIGNhbiBmYWlsLCBidXQgdGhlIHJldHVybiB2YWx1ZSBpcyBuZXZl
ciBjaGVja2VkLgo+Cj4gVXNlIF9fYmlvX2FkZF9wYWdlKCkgYXMgYWRkaW5nIGEgc2luZ2xlIHBh
Z2UgdG8gYSBuZXdseSBjcmVhdGVkIGJpbyBpcwo+IGd1YXJhbnRlZWQgdG8gc3VjY2VlZC4KPgo+
IFRoaXMgYnJpbmdzIHVzIGEgc3RlcCBjbG9zZXIgdG8gbWFya2luZyBiaW9fYWRkX3BhZ2UoKSBh
cyBfX211c3RfY2hlY2suCj4KPiBTaWduZWQtb2ZmLWJ5OiBKb2hhbm5lcyBUaHVtc2hpcm4gPGpv
aGFubmVzLnRodW1zaGlybkB3ZGMuY29tPgo+IFJldmlld2VkLWJ5OiBEYW1pZW4gTGUgTW9hbCA8
ZGFtaWVuLmxlbW9hbEBvcGVuc291cmNlLndkYy5jb20+CgpBY2tlZC1ieTogU29uZyBMaXUgPHNv
bmdAa2VybmVsLm9yZz4KClRoYW5rcyEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpKZnMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1c3Np
b25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xp
c3RzL2xpc3RpbmZvL2pmcy1kaXNjdXNzaW9uCg==
