Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F53F716DDA
	for <lists+jfs-discussion@lfdr.de>; Tue, 30 May 2023 21:44:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q45G3-0003FI-KF;
	Tue, 30 May 2023 19:43:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpatocka@redhat.com>) id 1q45G2-0003FC-MZ
 for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 19:43:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=61jSLilvI6Kq8tZP1TgtpGiMrTcQZMGT4z3p0LusAeA=; b=JB7Xj6QMuQ4yvSu8C93vrAPZfu
 I8+PfcAd7sioUZMsxl+WIFXAn/z4EREJjkP4zU86HhXX71ck+NUGjXTkdv8gwIrvUUnjDSub7zC5Z
 AD/ZaACf12k9e/KdbaphSz3BPAUysMs3S96g0emCq8UE+S0O+4NLq7Hz7jxXqworgql4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=61jSLilvI6Kq8tZP1TgtpGiMrTcQZMGT4z3p0LusAeA=; b=NxoBZ298bpzEJAX21v+vlnO5CL
 +pKffDSIirvnqhnRCIxiH0t6dydIcKhigXvWL8E0GCmOZJrF5h6jbmTGEkt7dQU2v28tAyM6S8CMg
 f0cDcnibiLSfTf/DvZsxJx4Bj3d+uh12hkR3oqgZS+pT7RDZkTLS5NLx7n7EokR0rvmc=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q45Fz-0002IC-6m for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 19:43:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1685475821;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=61jSLilvI6Kq8tZP1TgtpGiMrTcQZMGT4z3p0LusAeA=;
 b=GsqdTmCHT8NP5LleVwFUabg+LvtnmZO5v9mDR9wPf2rrLNfZJBgGf2nKlMOr3cVPLa7Esr
 GAauaXnrrWwitvj482RvEUAbGm/ZcvQTnSgP0IBeHVZlj70uU4oFIbuRtCshIgW6jHzCbg
 qu6TgDQflvxViPtjr4fpkSNSHxDoMRI=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-142-MsdeEUCPPlCHG2sXrVx-fA-1; Tue, 30 May 2023 15:43:35 -0400
X-MC-Unique: MsdeEUCPPlCHG2sXrVx-fA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
 [10.11.54.6])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 903E8800B2A;
 Tue, 30 May 2023 19:43:34 +0000 (UTC)
Received: from file01.intranet.prod.int.rdu2.redhat.com
 (file01.intranet.prod.int.rdu2.redhat.com [10.11.5.7])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 5346B2166B25;
 Tue, 30 May 2023 19:43:34 +0000 (UTC)
Received: from file01.intranet.prod.int.rdu2.redhat.com (localhost [127.0.0.1])
 by file01.intranet.prod.int.rdu2.redhat.com (8.14.4/8.14.4) with ESMTP id
 34UJhY4b022142; Tue, 30 May 2023 15:43:34 -0400
Received: from localhost (mpatocka@localhost)
 by file01.intranet.prod.int.rdu2.redhat.com (8.14.4/8.14.4/Submit) with ESMTP
 id 34UJhXMb022117; Tue, 30 May 2023 15:43:33 -0400
X-Authentication-Warning: file01.intranet.prod.int.rdu2.redhat.com: mpatocka
 owned process doing -bs
Date: Tue, 30 May 2023 15:43:33 -0400 (EDT)
From: Mikulas Patocka <mpatocka@redhat.com>
X-X-Sender: mpatocka@file01.intranet.prod.int.rdu2.redhat.com
To: Mike Snitzer <snitzer@kernel.org>
In-Reply-To: <ZHYbIYxGbcXbpvIK@redhat.com>
Message-ID: <alpine.LRH.2.21.2305301527410.18906@file01.intranet.prod.int.rdu2.redhat.com>
References: <20230502101934.24901-1-johannes.thumshirn@wdc.com>
 <20230502101934.24901-17-johannes.thumshirn@wdc.com>
 <alpine.LRH.2.21.2305301045220.3943@file01.intranet.prod.int.rdu2.redhat.com>
 <ZHYbIYxGbcXbpvIK@redhat.com>
User-Agent: Alpine 2.21 (LRH 202 2017-01-01)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 30 May 2023, Mike Snitzer wrote: > On Tue, May 30
 2023 at 11:13P -0400, > Mikulas Patocka <mpatocka@redhat.com> wrote: > > >
 Hi > > > > I nack this. This just adds code that can't ever be executed.
 > > > > dm-crypt already allocates [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1q45Fz-0002IC-6m
Subject: Re: [Jfs-discussion] [PATCH v5 16/20] dm-crypt: check if adding
 pages to clone bio fails
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
Cc: "axboe @ kernel . dk" <axboe@kernel.dk>, shaggy@kernel.org,
 damien.lemoal@wdc.com, kch@nvidia.com, agruenba@redhat.com, song@kernel.org,
 Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>, linux-raid@vger.kernel.org,
 jfs-discussion@lists.sourceforge.net, willy@infradead.org, ming.lei@redhat.com,
 cluster-devel@redhat.com, linux-mm@kvack.org, dm-devel@redhat.com,
 linux-block@vger.kernel.org, rpeterso@redhat.com,
 linux-fsdevel@vger.kernel.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net



On Tue, 30 May 2023, Mike Snitzer wrote:

> On Tue, May 30 2023 at 11:13P -0400,
> Mikulas Patocka <mpatocka@redhat.com> wrote:
> 
> > Hi
> > 
> > I nack this. This just adds code that can't ever be executed.
> > 
> > dm-crypt already allocates enough entries in the vector (see "unsigned int 
> > nr_iovecs = (size + PAGE_SIZE - 1) >> PAGE_SHIFT;"), so bio_add_page can't 
> > fail.
> > 
> > If you want to add __must_check to bio_add_page, you should change the 
> > dm-crypt code to:
> > if (!bio_add_page(clone, page, len, 0)) {
> > 	WARN(1, "this can't happen");
> > 	return NULL;
> > }
> > and not write recovery code for a can't-happen case.
> 
> Thanks for the review Mikulas. But the proper way forward, in the
> context of this patchset, is to simply change bio_add_page() to
> __bio_add_page()
> 
> Subject becomes: "dm crypt: use __bio_add_page to add single page to clone bio"
> 
> And header can explain that "crypt_alloc_buffer() already allocates
> enough entries in the clone bio's vector, so bio_add_page can't fail".
> 
> Mike

Yes, __bio_add_page would look nicer. But bio_add_page can merge adjacent 
pages into a single bvec entry and __bio_add_page can't (I don't know how 
often the merging happens or what is the performance implication of 
non-merging).

I think that for the next merge window, we can apply this patch: 
https://listman.redhat.com/archives/dm-devel/2023-May/054046.html
which makes this discussion irrelevant. (you can change bio_add_page to 
__bio_add_page in it)

Mikukas



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
