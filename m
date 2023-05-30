Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E62D071697B
	for <lists+jfs-discussion@lfdr.de>; Tue, 30 May 2023 18:28:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q42CH-00027j-UG;
	Tue, 30 May 2023 16:27:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <msnitzer@redhat.com>) id 1q41zu-0008TM-H4
 for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 16:14:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ef9UXKlo6HOEzGKOWoRQOx3X1Mv/S3dqqbfR/aqcj1E=; b=ED8NzvZIfE531erhE9od/6dMS6
 BjiKXdy6rP4DQp45t/tygmxgnZtifiA8ilwvFmP9DiHZGLtMBN3+dYgkO0OrjsWF//0i0jzncOYaL
 QwbzFH1Qm5YACOLj7ge6/FCfFZSZctPjdDm6zGi28yRJMHEie8/f3rwcwDZgRMTo3p7c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ef9UXKlo6HOEzGKOWoRQOx3X1Mv/S3dqqbfR/aqcj1E=; b=V9wdAAoKTBkYXU8ap/12VhNohn
 N+kO8jSZUIls/n3sqdDfplCiHaQyj/0TCUEDFCXUpugD7t8NnR66Etn1tpBszLU2yexIw3BM6O+PX
 +vOrUB6kc7kcMhLeTAxWIk2HLbGRxdC6pvla4m++G/elVQDrXTyEYNqiDG4hayXmgKZg=;
Received: from mail-ua1-f48.google.com ([209.85.222.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1q41zs-0004mf-1p for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 16:14:58 +0000
Received: by mail-ua1-f48.google.com with SMTP id
 a1e0cc1a2514c-783f88ce557so3468614241.3
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 30 May 2023 09:14:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685463287; x=1688055287;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ef9UXKlo6HOEzGKOWoRQOx3X1Mv/S3dqqbfR/aqcj1E=;
 b=KBWJzxGK4SMszEXFuUEa2gYyGKE58rJYIj/jrhQuRb8+cPaFcp/lJBjApOBhre2QIQ
 1vu7EnUqsWMOIFUxLvtDlfSgXj4ycVrHkuGyDHqZtxQYYly4zzy2XkhWF2EbukeOfube
 N3Oq/gvgwJgsZJUtGQTx9zdGqa6FG5za/O1i0f7rTVWAqnWGC6/oYnbOYAgqVQGK1TB9
 An4SvHzmr2N4Wf2+hx6uilxj+VVCOvNuGIjp0n2wmE03Vk6M77nfxBpe8pNZD0LIt/pv
 C5vETzZF9RASF+2dfuihC7RPSQ1yPEev8zy56BgCVzIo6ilM63fXJn0ao0T7qBN+TRkz
 5YZA==
X-Gm-Message-State: AC+VfDw/5v9SHlJbCqj0a3s4Kj5jTsvj0R09tV50GUEZgF427FjaDaMB
 Gmf0SNCqWMUIOqhrXWz2s1nJtckbLZ3LdjBMsg==
X-Google-Smtp-Source: ACHHUZ7pliMoFycu95ZOXiwcTabY+u351+caH9+LwJwAEUbICb4vYuE61O+IVefjdSw8mai/KPkDog==
X-Received: by 2002:a05:620a:8084:b0:75c:c99d:e416 with SMTP id
 ef4-20020a05620a808400b0075cc99de416mr2289656qkb.49.1685461794842; 
 Tue, 30 May 2023 08:49:54 -0700 (PDT)
Received: from localhost (pool-68-160-166-30.bstnma.fios.verizon.net.
 [68.160.166.30]) by smtp.gmail.com with ESMTPSA id
 a23-20020a05620a16d700b0075b053ab66bsm4135656qkn.50.2023.05.30.08.49.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 May 2023 08:49:54 -0700 (PDT)
Date: Tue, 30 May 2023 11:49:53 -0400
From: Mike Snitzer <snitzer@kernel.org>
To: Mikulas Patocka <mpatocka@redhat.com>
Message-ID: <ZHYbIYxGbcXbpvIK@redhat.com>
References: <20230502101934.24901-1-johannes.thumshirn@wdc.com>
 <20230502101934.24901-17-johannes.thumshirn@wdc.com>
 <alpine.LRH.2.21.2305301045220.3943@file01.intranet.prod.int.rdu2.redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LRH.2.21.2305301045220.3943@file01.intranet.prod.int.rdu2.redhat.com>
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, May 30 2023 at 11:13P -0400,
 Mikulas Patocka <mpatocka@redhat.com>
 wrote: > > > On Tue, 2 May 2023, Johannes Thumshirn wrote: > > > Check if
 adding pages to clone bio fails and if it does retry with > > reclaim. This
 mirrors the behaviour of page allocation in > > crypt_all [...] 
 Content analysis details:   (0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.48 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.48 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1q41zs-0004mf-1p
X-Mailman-Approved-At: Tue, 30 May 2023 16:27:45 +0000
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

On Tue, May 30 2023 at 11:13P -0400,
Mikulas Patocka <mpatocka@redhat.com> wrote:

> 
> 
> On Tue, 2 May 2023, Johannes Thumshirn wrote:
> 
> > Check if adding pages to clone bio fails and if it does retry with
> > reclaim. This mirrors the behaviour of page allocation in
> > crypt_alloc_buffer().
> > 
> > This way we can mark bio_add_pages as __must_check.
> > 
> > Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
> > Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
> > ---
> >  drivers/md/dm-crypt.c | 9 ++++++++-
> >  1 file changed, 8 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/md/dm-crypt.c b/drivers/md/dm-crypt.c
> > index 8b47b913ee83..b234dc089cee 100644
> > --- a/drivers/md/dm-crypt.c
> > +++ b/drivers/md/dm-crypt.c
> > @@ -1693,7 +1693,14 @@ static struct bio *crypt_alloc_buffer(struct dm_crypt_io *io, unsigned int size)
> >  
> >  		len = (remaining_size > PAGE_SIZE) ? PAGE_SIZE : remaining_size;
> >  
> > -		bio_add_page(clone, page, len, 0);
> > +		if (!bio_add_page(clone, page, len, 0)) {
> > +			mempool_free(page, &cc->page_pool);
> > +			crypt_free_buffer_pages(cc, clone);
> > +			bio_put(clone);
> > +			gfp_mask |= __GFP_DIRECT_RECLAIM;
> > +			goto retry;
> > +
> > +		}
> >  
> >  		remaining_size -= len;
> >  	}
> 
> Hi
> 
> I nack this. This just adds code that can't ever be executed.
> 
> dm-crypt already allocates enough entries in the vector (see "unsigned int 
> nr_iovecs = (size + PAGE_SIZE - 1) >> PAGE_SHIFT;"), so bio_add_page can't 
> fail.
> 
> If you want to add __must_check to bio_add_page, you should change the 
> dm-crypt code to:
> if (!bio_add_page(clone, page, len, 0)) {
> 	WARN(1, "this can't happen");
> 	return NULL;
> }
> and not write recovery code for a can't-happen case.

Thanks for the review Mikulas. But the proper way forward, in the
context of this patchset, is to simply change bio_add_page() to
__bio_add_page()

Subject becomes: "dm crypt: use __bio_add_page to add single page to clone bio"

And header can explain that "crypt_alloc_buffer() already allocates
enough entries in the clone bio's vector, so bio_add_page can't fail".

Mike


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
