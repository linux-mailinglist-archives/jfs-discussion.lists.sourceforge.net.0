Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 241F86D26E9
	for <lists+jfs-discussion@lfdr.de>; Fri, 31 Mar 2023 19:47:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1piIqb-0000iq-7I;
	Fri, 31 Mar 2023 17:47:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <song@kernel.org>) id 1piIqZ-0000ij-Le
 for jfs-discussion@lists.sourceforge.net;
 Fri, 31 Mar 2023 17:47:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=agncQKz6RRQ+z2AndB9egaUCjOR2XStw/8eDPUmcjT8=; b=UrPzgs7AQYTEU6tztzAQvqHO7C
 3JbkCYlzhfqJn7wXEnTr7aC1tF9Sg4zJ7aXme0YxSmVk0AdjyGD/qa+HAvcwZWy8z00+vVJAtgF08
 Ak9gBtiKOHUwRcc2U9mez3pCMFsOpU/J8UsLDaGZDICt81ntSASc8TAFUeyUAfxWOwR8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=agncQKz6RRQ+z2AndB9egaUCjOR2XStw/8eDPUmcjT8=; b=mIm7GnrzLlPYSIWhLuVT4/UJcS
 lPag4E3dcbORYXbmii0qpvsgdRN0CicPzQs57hL6mtRKXmsrO6RKN0pvSx+H/AU38dct9Y4zaYw+2
 cJW0QNp3EYPJTLWrQ4ZSePLp10gxdY9Kgg8xlURIa1vhfZmAj7z/rx9MQan7TcP/pUX0=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1piIqY-0000YJ-3g for jfs-discussion@lists.sourceforge.net;
 Fri, 31 Mar 2023 17:47:30 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id A20EAB83138
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 31 Mar 2023 17:47:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 65B32C433D2
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 31 Mar 2023 17:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1680284842;
 bh=agncQKz6RRQ+z2AndB9egaUCjOR2XStw/8eDPUmcjT8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=PYEVYWIVUH7dS32tobiqHPv8N06Ir6XV+fO/AkMI4o66gPCmRSQrPmB/62RJDCjRX
 iha1oZWcgsdLkZM/rC/W4UwfQyPsdCwFKNrqffhv/EmPvwZJeb3/ObjFsJC5MhDerl
 6Cx7gxJLQOUG+zb6KxBg5qAHVQuMVVbqwicLztbutfgto8W9OzeTQAoEfC9vYWb3/6
 WbIN0UoYXvJIMjz85vPFsRQBCcHBixj1M8VbsRnNKUNQKfu4VoW2MuoVPGJO1e3WM0
 lskThRRIawrJ3Oyv3wDs0wMu+dVhpxnIUfenisVKNRTUmEG0HLG5WxSjGzb6R+Ni/e
 jLYxlUQypWhrw==
Received: by mail-lj1-f175.google.com with SMTP id a11so23875693lji.6
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 31 Mar 2023 10:47:22 -0700 (PDT)
X-Gm-Message-State: AAQBX9cQ9JDREVDSoAJ6i7u8PFONyDD55ElL40RwKF13HPfb1Sp2oUfu
 3QSp5k2UtNtck++n2Fl08dFAvartl5hYvqCkz8o=
X-Google-Smtp-Source: AKy350YsVC49X4YKPGPcvZZvpV/eK4Pm1deoqn4/arjrTKATbsjiI11VNkB5amsOZg1wLI0Ovo0EsryvUkWIU3e100g=
X-Received: by 2002:a2e:9d16:0:b0:2a6:16b4:40a2 with SMTP id
 t22-20020a2e9d16000000b002a616b440a2mr2329769lji.5.1680284840437; Fri, 31 Mar
 2023 10:47:20 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1680172791.git.johannes.thumshirn@wdc.com>
 <359e6d4d77ee175e2ce7c315a3176ca360e10fbc.1680172791.git.johannes.thumshirn@wdc.com>
In-Reply-To: <359e6d4d77ee175e2ce7c315a3176ca360e10fbc.1680172791.git.johannes.thumshirn@wdc.com>
From: Song Liu <song@kernel.org>
Date: Fri, 31 Mar 2023 10:47:08 -0700
X-Gmail-Original-Message-ID: <CAPhsuW5twFinPtGkAORYW04fqQP3L9NJZDX++_hAbKPrLbF95g@mail.gmail.com>
Message-ID: <CAPhsuW5twFinPtGkAORYW04fqQP3L9NJZDX++_hAbKPrLbF95g@mail.gmail.com>
To: Johannes Thumshirn <johannes.thumshirn@wdc.com>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, Mar 30, 2023 at 3:44 AM Johannes Thumshirn <johannes.thumshirn@wdc.com>
    wrote: > > The md-raid superblock writing code uses bio_add_page() to add
    a page to a > newly created bio. bio_add_pag [...] 
 
 Content analysis details:   (-5.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [145.40.68.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1piIqY-0000YJ-3g
Subject: Re: [Jfs-discussion] [PATCH v2 05/19] md: use __bio_add_page to add
 single page
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
YW5uZXMudGh1bXNoaXJuQHdkYy5jb20+IHdyb3RlOgo+Cj4gVGhlIG1kLXJhaWQgc3VwZXJibG9j
ayB3cml0aW5nIGNvZGUgdXNlcyBiaW9fYWRkX3BhZ2UoKSB0byBhZGQgYSBwYWdlIHRvIGEKPiBu
ZXdseSBjcmVhdGVkIGJpby4gYmlvX2FkZF9wYWdlKCkgY2FuIGZhaWwsIGJ1dCB0aGUgcmV0dXJu
IHZhbHVlIGlzIG5ldmVyCj4gY2hlY2tlZC4KPgo+IFVzZSBfX2Jpb19hZGRfcGFnZSgpIGFzIGFk
ZGluZyBhIHNpbmdsZSBwYWdlIHRvIGEgbmV3bHkgY3JlYXRlZCBiaW8gaXMKPiBndWFyYW50ZWVk
IHRvIHN1Y2NlZWQuCj4KPiBUaGlzIGJyaW5ncyB1cyBhIHN0ZXAgY2xvc2VyIHRvIG1hcmtpbmcg
YmlvX2FkZF9wYWdlKCkgYXMgX19tdXN0X2NoZWNrLgo+Cj4gU2lnbmVkLW9mXy1ieTogSm9oYW5u
ZXMgVGh1bXNoaXJuIDxqb2hhbm5lcy50aHVtc2hpcm5Ad2RjLmNvbT4KPiBSZXZpZXdlZC1ieTog
RGFtaWVuIExlIE1vYWwgPGRhbWllbi5sZW1vYWxAb3BlbnNvdXJjZS53ZGMuY29tPgoKQWNrZWQt
Ynk6IFNvbmcgTGl1IDxzb25nQGtlcm5lbC5vcmc+CgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSmZzLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1k
aXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdl
Lm5ldC9saXN0cy9saXN0aW5mby9qZnMtZGlzY3Vzc2lvbgo=
