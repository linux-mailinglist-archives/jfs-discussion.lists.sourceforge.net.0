Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA196D1229
	for <lists+jfs-discussion@lfdr.de>; Fri, 31 Mar 2023 00:30:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pi0mX-0005er-5Z;
	Thu, 30 Mar 2023 22:30:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <shy828301@gmail.com>) id 1pi0mV-0005ek-LU
 for jfs-discussion@lists.sourceforge.net;
 Thu, 30 Mar 2023 22:30:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=x7V03//xrMoj2maIfgC2qsiNLnzTtZRlKFOvF+x+bJg=; b=evEkDQ3SE+KFMoymZRD0TFCkJf
 fI+ETm5o8yIbjz5WGB1/IEC1za8CXFos0pTgpeRLAR3Lv4tCWYW67ewD5lcb/vo4ZbDQvkXYK/GGt
 ioVBPhvvMA0ftIVN4meZgqmOB3R+I2/14zM06iUDEaanUN3x4BmgfjcQdFkXDwJjJF0g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=x7V03//xrMoj2maIfgC2qsiNLnzTtZRlKFOvF+x+bJg=; b=IUQuZFocKQICOplP+BuYetzCV2
 0kYPOuRxZNf+AHI/MEm3e5xIYBSvlPZ15erTXaOE89zMxfq1KKjjDE67wwOx5QPUhaKbLm3hGklcT
 d0JIey6xY1qsKQYUKXI1f8J+wTYv86JmCkhsEt10LkkaraWwSz9hjJ4aX29a3/PyorFk=;
Received: from mail-pj1-f41.google.com ([209.85.216.41])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pi0mR-0001iW-JQ for jfs-discussion@lists.sourceforge.net;
 Thu, 30 Mar 2023 22:30:08 +0000
Received: by mail-pj1-f41.google.com with SMTP id
 lr16-20020a17090b4b9000b0023f187954acso21362793pjb.2
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 30 Mar 2023 15:30:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1680215398;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=x7V03//xrMoj2maIfgC2qsiNLnzTtZRlKFOvF+x+bJg=;
 b=mlMMJ39hyYXqt+JHj1LUKtCdNF3jPgcvR5YIbnZgjG2qBiSoA+kwmOTqtkW+KgUjT+
 f3e/T8MSaieLqfYE0dDEdexsiqrRYKBvODsqM2N1upFbF1vKGKnEQRNu6sm836+CwA5C
 ck0fVumW1XKGVaDTiJc1oZcOOCIV226dBsy+ORXRDdb3DqX9xOqXNxevXkMcMjtEUDFn
 3DS5IHtGgjR5BAJQeAORmm+Co3dYw4PAzJtKWdjXOIijVMdHsC+Mv7hna+osVcIUucg/
 sMDusNSOtuWu7xAgNPPArSDS5AjN3qPzyekWsD7Mi/qHO9lJ1NdSDNgcsKtE2ONpmI68
 vTqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680215398;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=x7V03//xrMoj2maIfgC2qsiNLnzTtZRlKFOvF+x+bJg=;
 b=HZ+yunfWEhQpVY+bopOYrfv5jc4aL7wL1yZUKd+lIWtEM0Lb546vtF0arI7LuT5CSL
 zAH6i9BAVD3IVywf7sIzwmfyD0Kkfv/FzXWPW9qbJo1+RidEr6w+EakbaAKyu4sQ52/q
 zT31VGiO9DhskyveEfHpbwk6Rjgl8lyzNNTDLSsF+pX0fW0pwV23xGMC+9iZbhOokiYY
 ythd2Os+lfFYTA6qAEZL9AyTok5jwccbDwyZr061aJ9yQ+Wsa3j278fFVv/MXoHjGkV8
 iADX0vhda9OcAx/hali3VY5jsf1Cbf3VNcTHpmgTqU8Yn2TWUGydpaCHl/FHe80O7APC
 hZtw==
X-Gm-Message-State: AAQBX9fLZ4Lli3ZRqbZcwNlcsqSScIM3h2Z5B/flzJ7zHQPuzxZW6RHc
 AgWZzlr5Bh2szhiqJDKjYqCKalZWMdJDpIPtZBQ=
X-Google-Smtp-Source: AKy350ZrPyR1hRVTBuZnQUpMEn54ihWHCa7XbNjYLmiSy4XxnRAJ80dimqjvvbOmN9ocOuC+cire+hzLe0DMBMrzkWw=
X-Received: by 2002:a17:90a:fb57:b0:23d:30c2:c5b7 with SMTP id
 iq23-20020a17090afb5700b0023d30c2c5b7mr2603971pjb.3.1680215397861; Thu, 30
 Mar 2023 15:29:57 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1680108414.git.johannes.thumshirn@wdc.com>
 <beea645603eccbb045ad9bb777e05a085b91808a.1680108414.git.johannes.thumshirn@wdc.com>
 <3a0f0c92-63cb-3624-c2fe-049a76d1a64a@opensource.wdc.com>
 <CAHbLzkoRdTTbnfz3RyLQAeNJBOEVNGL2WLgRSE2eQ4nR8sRe2g@mail.gmail.com>
 <b19696d3-54bb-d997-5e56-aa5fd58b469f@opensource.wdc.com>
In-Reply-To: <b19696d3-54bb-d997-5e56-aa5fd58b469f@opensource.wdc.com>
From: Yang Shi <shy828301@gmail.com>
Date: Thu, 30 Mar 2023 15:29:46 -0700
Message-ID: <CAHbLzkrEXVDf4TYLw_MPrFNybWQHWXKX=zP5GhxHQFdpVPWhEg@mail.gmail.com>
To: Damien Le Moal <damien.lemoal@opensource.wdc.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, Mar 29, 2023 at 5:24 PM Damien Le Moal wrote: >
   > On 3/30/23 09:17, Yang Shi wrote: > > On Wed, Mar 29, 2023 at 4:49 PM
   Damien Le Moal > > wrote: > >> > >> On 3/30/23 02:06, Johannes T [...] 
 
 Content analysis details:   (0.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [shy828301[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
                             in digit
                             [shy828301[at]gmail.com]
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.216.41 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.216.41 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1pi0mR-0001iW-JQ
Subject: Re: [Jfs-discussion] [PATCH 18/19] dm-crypt: check if adding pages
 to clone bio fails
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
 jfs-discussion@lists.sourceforge.net, cluster-devel@redhat.com,
 Chaitanya Kulkarni <kch@nvidia.com>, Andreas Gruenbacher <agruenba@redhat.com>,
 Song Liu <song@kernel.org>, Dave Kleikamp <shaggy@kernel.org>,
 Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 Mike Snitzer <snitzer@kernel.org>, Matthew Wilcox <willy@infradead.org>,
 Ming Lei <ming.lei@redhat.com>, linux-block@vger.kernel.org,
 linux-mm@kvack.org, dm-devel@redhat.com, David Sterba <dsterba@suse.com>,
 Hannes Reinecke <hare@suse.de>, linux-fsdevel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-btrfs@vger.kernel.org,
 Bob Peterson <rpeterso@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gV2VkLCBNYXIgMjksIDIwMjMgYXQgNToyNOKAr1BNIERhbWllbiBMZSBNb2FsCjxkYW1pZW4u
bGVtb2FsQG9wZW5zb3VyY2Uud2RjLmNvbT4gd3JvdGU6Cj4KPiBPbiAzLzMwLzIzIDA5OjE3LCBZ
YW5nIFNoaSB3cm90ZToKPiA+IE9uIFdlZCwgTWFyIDI5LCAyMDIzIGF0IDQ6NDnigK9QTSBEYW1p
ZW4gTGUgTW9hbAo+ID4gPGRhbWllbi5sZW1vYWxAb3BlbnNvdXJjZS53ZGMuY29tPiB3cm90ZToK
PiA+Pgo+ID4+IE9uIDMvMzAvMjMgMDI6MDYsIEpvaGFubmVzIFRodW1zaGlybiB3cm90ZToKPiA+
Pj4gQ2hlY2sgaWYgYWRkaW5nIHBhZ2VzIHRvIGNsb25lIGJpbyBmYWlscyBhbmQgaWYgYmFpbCBv
dXQuCj4gPj4KPiA+PiBOb3BlLiBUaGUgY29kZSByZXRyaWVzIHdpdGggZGlyZWN0IHJlY2xhaW0g
dW50aWwgaXQgc3VjY2VlZHMuIFdoaWNoIGlzIHZlcnkKPiA+PiBzdXNwaWNpb3VzLi4uCj4gPgo+
ID4gSXQgaXMgbm90IHJlbGF0ZWQgdG8gYmlvX2FkZF9wYWdlKCkgZmFpbHVyZS4gSXQgaXMgdXNl
ZCB0byBhdm9pZCBhCj4gPiByYWNlIGNvbmRpdGlvbiB3aGVuIHR3byBwcm9jZXNzZXMgYXJlIGRl
cGxldGluZyB0aGUgbWVtcG9vbAo+ID4gc2ltdWx0YW5lb3VzbHkuCj4gPgo+ID4gSUlVQyBJIGRv
bid0IHRoaW5rIHBhZ2UgbWVyZ2UgbWF5IGhhcHBlbiBmb3IgZG0tY3J5cHQsIHNvIGlzCj4gPiBf
X2Jpb19hZGRfcGFnZSgpIGdvb2QgZW5vdWdoPyBJJ20gd29ya2luZyBvbiB0aGlzIGNvZGUgdG9v
LCB1c2luZwo+ID4gX19iaW9fYWRkX3BhZ2UoKSB3b3VsZCBtYWtlIG15IHBhdGNoIGVhc2llci4K
Pgo+IElmIHRoZSBCSU8gd2FzIGFsbG9jYXRlZCB3aXRoIGVub3VnaCBidmVjcywgd2UgY291bGQg
dXNlIHRoYXQgZnVuY3Rpb24uIEJ1dCBwYWdlCj4gbWVyZ2luZyByZWR1Y2VzIG92ZXJoZWFkLCBz
byBpZiBpdCBjYW4gaGFwcGVuLCBsZXQncyB1c2UgaXQuCgpJdCBkb2VzIGFsbG9jYXRlIEJJTyB3
aXRoIGVub3VnaCBidmVjcy4gSUlVQyBpdCB3aWxsIG1lcmdlIHRoZQphZGphY2VudCBwYWdlcz8g
SWYgc28gcGFnZSBtZXJnaW5nIG1heSBoYXBwZW4uIFNpbmNlIGRtLWNyeXB0IGRvZXMKYWxsb2Nh
dGUgQklPIHdpdGggZW5vdWdoIGJ2Y2VzLCBzbyBpdCBjYW4ndCBmYWlsIGlmIEkgcmVhZCB0aGUg
Y29kZQpjb3JyZWN0bHkuIEknbSB3b25kZXJpbmcgd2hldGhlciB3ZSBjb3VsZCBoYXZlIGEgbmV2
ZXIgZmFpbCB2YXJpYW50LgoKPgo+ID4KPiA+Pgo+ID4+Pgo+ID4+PiBUaGlzIHdheSB3ZSBjYW4g
bWFyayBiaW9fYWRkX3BhZ2VzIGFzIF9fbXVzdF9jaGVjay4KPiA+Pj4KPiA+Pj4gU2lnbmVkLW9m
Zi1ieTogSm9oYW5uZXMgVGh1bXNoaXJuIDxqb2hhbm5lcy50aHVtc2hpcm5Ad2RjLmNvbT4KPiA+
Pgo+ID4+IFdpdGggdGhlIGNvbW1pdCBtZXNzYWdlIGZpeGVkLAo+ID4+Cj4gPj4gUmV2aWV3ZWQt
Ynk6IERhbWllbiBMZSBNb2FsIDxkYW1pZW4ubGVtb2FsQG9wZW5zb3VyY2Uud2RjLmNvbT4KPiA+
Pgo+ID4+Cj4gPj4gLS0KPiA+PiBEYW1pZW4gTGUgTW9hbAo+ID4+IFdlc3Rlcm4gRGlnaXRhbCBS
ZXNlYXJjaAo+ID4+Cj4gPj4KPgo+IC0tCj4gRGFtaWVuIExlIE1vYWwKPiBXZXN0ZXJuIERpZ2l0
YWwgUmVzZWFyY2gKPgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkpmcy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdApKZnMtZGlzY3Vzc2lvbkBsaXN0cy5z
b3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGlu
Zm8vamZzLWRpc2N1c3Npb24K
