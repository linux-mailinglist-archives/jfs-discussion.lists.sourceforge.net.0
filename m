Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D1AB71F2B5
	for <lists+jfs-discussion@lfdr.de>; Thu,  1 Jun 2023 21:13:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q4njK-0004w0-3n;
	Thu, 01 Jun 2023 19:13:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <msnitzer@redhat.com>) id 1q4njH-0004vV-8z
 for jfs-discussion@lists.sourceforge.net;
 Thu, 01 Jun 2023 19:13:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OhyufVORgAPdxy2e2nylP7DQVEhvcm7KBzR049ls10E=; b=MQE2hU5NJoX9AqUygkhf29ow1o
 80CObHGqCkS54U9Zg/Q9Hb+tYWmgcvhBEZKhYdVcniDv2pF7adyJ9068lU85lFTIszfftUPz4eL74
 LtmEGPrASqpixU8xf3ZnmpmtQDccuzhtp6ZMVk6irOnpbYcEf1CXQW2K9pZe149MPeLc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OhyufVORgAPdxy2e2nylP7DQVEhvcm7KBzR049ls10E=; b=D9ScmwhdoJVByenYSxELJUpW2D
 vzI09eKkl5M3P7GQOjkXSuI1YYlZli4ef3luVPVs36eF0GXduz28yXko2hdCyyR7PC6JzkqWzqStn
 mo7tslF70Ss2urF0HucXMJO05riVEAz8D6jh1Kp2Onra9Sf8xKdeScoaRqyY+L/cmTIU=;
Received: from mail-qk1-f180.google.com ([209.85.222.180])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1q4njD-0000Jg-Rv for jfs-discussion@lists.sourceforge.net;
 Thu, 01 Jun 2023 19:13:00 +0000
Received: by mail-qk1-f180.google.com with SMTP id
 af79cd13be357-75b14216386so110077185a.0
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 01 Jun 2023 12:12:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685646770; x=1688238770;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=OhyufVORgAPdxy2e2nylP7DQVEhvcm7KBzR049ls10E=;
 b=F8C9z+3tfFAZqfcZNDf4/sfxZtAwYC8Dro1uAD/2/y8Vc8rfY6KnyKV6B3xkRM9Cba
 NQWXK1/emt3hi/XCe24UDXWMBSbUXij8n7NYDYA0QcU5FHsYsrNYPA3NW44znlsexDps
 z66wBlunjKqno2RRuLnDFBG5IVmBFucOVHGgbyKvk5gtTHGrgZQcbjHrRptX/aSWDfVE
 9nvLRbgqf+rIzJaI101k7QESWPjR7UGI/5Z5msHL+59w4Mnzn5BKjDqCWZQvvgn2vq8C
 4kdWRHi99Slnr8yaaC9HV+uEEkz5xp8mKKfh/bLsumr9zt519Qh2vraKIvF8Us5lA0KC
 9dOA==
X-Gm-Message-State: AC+VfDyG7vSD99S5WWHivi5U9YaJBKPjauE5PWoZaAJqMSTcTE32XSBv
 X1J3xdliXJ3UPB41tTZZXrkRBpWVekzlPBgsjQ==
X-Google-Smtp-Source: ACHHUZ6u3xR1YiMGmuLlFSVcpQijECu4NK+3gxplM1YXFxd6uPbdqueU4kLpHglpcsupIu+Tz62ckA==
X-Received: by 2002:a05:6214:aca:b0:625:b849:fa3 with SMTP id
 g10-20020a0562140aca00b00625b8490fa3mr11540334qvi.30.1685645167691; 
 Thu, 01 Jun 2023 11:46:07 -0700 (PDT)
Received: from localhost (pool-68-160-166-30.bstnma.fios.verizon.net.
 [68.160.166.30]) by smtp.gmail.com with ESMTPSA id
 y3-20020ac87c83000000b003e89e2b3c23sm7940746qtv.58.2023.06.01.11.46.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 01 Jun 2023 11:46:07 -0700 (PDT)
Date: Thu, 1 Jun 2023 14:46:06 -0400
From: Mike Snitzer <snitzer@kernel.org>
To: Mikulas Patocka <mpatocka@redhat.com>
Message-ID: <ZHjnbkcpZ/yZWRsE@redhat.com>
References: <20230502101934.24901-1-johannes.thumshirn@wdc.com>
 <20230502101934.24901-17-johannes.thumshirn@wdc.com>
 <alpine.LRH.2.21.2305301045220.3943@file01.intranet.prod.int.rdu2.redhat.com>
 <ZHYbIYxGbcXbpvIK@redhat.com>
 <alpine.LRH.2.21.2305301527410.18906@file01.intranet.prod.int.rdu2.redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LRH.2.21.2305301527410.18906@file01.intranet.prod.int.rdu2.redhat.com>
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, May 30 2023 at 3:43P -0400,
 Mikulas Patocka <mpatocka@redhat.com>
 wrote: > > > On Tue, 30 May 2023, Mike Snitzer wrote: > > > On Tue, May 30
 2023 at 11:13P -0400, > > Mikulas Patocka <mpatocka@redhat.com> wrote: >
 > > > > Hi > > > > > > I nack this. This just adds code tha [...] 
 Content analysis details:   (0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.180 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.180 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1q4njD-0000Jg-Rv
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
 damien.lemoal@wdc.com, cluster-devel@redhat.com, kch@nvidia.com,
 agruenba@redhat.com, linux-mm@kvack.org,
 Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 jfs-discussion@lists.sourceforge.net, willy@infradead.org, ming.lei@redhat.com,
 linux-raid@vger.kernel.org, song@kernel.org, dm-devel@redhat.com,
 linux-block@vger.kernel.org, rpeterso@redhat.com,
 linux-fsdevel@vger.kernel.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Tue, May 30 2023 at  3:43P -0400,
Mikulas Patocka <mpatocka@redhat.com> wrote:

> 
> 
> On Tue, 30 May 2023, Mike Snitzer wrote:
> 
> > On Tue, May 30 2023 at 11:13P -0400,
> > Mikulas Patocka <mpatocka@redhat.com> wrote:
> > 
> > > Hi
> > > 
> > > I nack this. This just adds code that can't ever be executed.
> > > 
> > > dm-crypt already allocates enough entries in the vector (see "unsigned int 
> > > nr_iovecs = (size + PAGE_SIZE - 1) >> PAGE_SHIFT;"), so bio_add_page can't 
> > > fail.
> > > 
> > > If you want to add __must_check to bio_add_page, you should change the 
> > > dm-crypt code to:
> > > if (!bio_add_page(clone, page, len, 0)) {
> > > 	WARN(1, "this can't happen");
> > > 	return NULL;
> > > }
> > > and not write recovery code for a can't-happen case.
> > 
> > Thanks for the review Mikulas. But the proper way forward, in the
> > context of this patchset, is to simply change bio_add_page() to
> > __bio_add_page()
> > 
> > Subject becomes: "dm crypt: use __bio_add_page to add single page to clone bio"
> > 
> > And header can explain that "crypt_alloc_buffer() already allocates
> > enough entries in the clone bio's vector, so bio_add_page can't fail".
> > 
> > Mike
> 
> Yes, __bio_add_page would look nicer. But bio_add_page can merge adjacent 
> pages into a single bvec entry and __bio_add_page can't (I don't know how 
> often the merging happens or what is the performance implication of 
> non-merging).
> 
> I think that for the next merge window, we can apply this patch: 
> https://listman.redhat.com/archives/dm-devel/2023-May/054046.html
> which makes this discussion irrelevant. (you can change bio_add_page to 
> __bio_add_page in it)

Yes, your patch is on my TODO list.  I've rebased my dm-6.5 branch on
the latest block 6.5 branch.  I'll be reviewing/rebasing/applying your
patch soon.

Mike


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
