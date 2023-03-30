Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BC0B66CF835
	for <lists+jfs-discussion@lfdr.de>; Thu, 30 Mar 2023 02:25:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phg5x-0007YI-Ro;
	Thu, 30 Mar 2023 00:24:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=446f2bedc=damien.lemoal@opensource.wdc.com>)
 id 1phg5w-0007YC-5M for jfs-discussion@lists.sourceforge.net;
 Thu, 30 Mar 2023 00:24:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Qt1x7YVxfqzn+HD4mjAgVT20c57AOdxOnsXsCs1FA/w=; b=iOB/lE/QNrcfZmrPQIlT73B6uS
 yKKisVVLkN3zVbatO+foTaRgBGZKACB1NYS47PB7f2v/iVAVhDBKD5oIjNs1AL6ENFG69zP43RLyq
 elP3Ge/20RpDRpQhrwSOR85amU3IzM161xLsPp3wnLAHpsXWP1mSqy4xPHgdpcOaGZPI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Qt1x7YVxfqzn+HD4mjAgVT20c57AOdxOnsXsCs1FA/w=; b=fyQC6H5g1rYeT/mvR+dJ0e3qO4
 HsLNEzfztIdkFWFmee2m06DB9E8n6Eqvb/ZNheit2PaLYZL/Q4I92lmeXMb2xzqiYQIRFhDS51k5/
 SWXFHqCn7WyGDCLkNcB/ObqBTYdSAvbz2FSgC7GtStRI7bEHNBj/DefoRiQb35CngSAk=;
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phg5s-008wW4-Kq for jfs-discussion@lists.sourceforge.net;
 Thu, 30 Mar 2023 00:24:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680135884; x=1711671884;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Qt1x7YVxfqzn+HD4mjAgVT20c57AOdxOnsXsCs1FA/w=;
 b=UL/erMrswF2IewSoWSt0NwmmEjzjusAZFM6HDym8yXZOsEy57eryHJ/1
 vJO1t6JraE2Whtn+cNK2FkOzegZgaCGEAPxY2yynp+iq6Shr46p+V7vKd
 4qnhjL9RiLrfiuRix/ZOWb8ynWx9/YgWJ1Ruwa062dZsTpfoj2pWtyTY0
 HyDyBp1imb6SOXzY/uRvCXSsksCV/nsCKJRvKWOYt8JUMHZPYO27v8vER
 FBmJnLHwACGkOekcrkheHg9iUGJfjpt95FN34ohFZKlo2jXy6CHXR/uj9
 6JgkQa4LXs1+zoishP5LeF0GJcEZKq/e+SRsnW69wLte13qJSOCHFABo+ Q==;
X-IronPort-AV: E=Sophos;i="5.98,301,1673884800"; d="scan'208";a="225116487"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 30 Mar 2023 08:24:38 +0800
IronPort-SDR: WkEmpqb9enOvLbQdM9c2ubRoWEr9y4/w7c82ZpST9Guxx7qrSXH0dCCeB4pxnzvYLgM4OQKJ/N
 cZtQJyoi6c/vT5l77GElstd6/BDzxCCrmyNVVhSSW/sshkPZlUB51a9VvOjoYO1aGsjCB4DNbF
 1saaVYbvpGKeymP1534r500VfKfeuC5g9Re0U3XCQ2n2gIR/NQmcSezfKdkUCy7t8ENc/Fo3sn
 B/uPq2zhWl028Zn4yuQjL4suTMWvLGLyF7Tfk9dK70RJo2V5oyh64TE+uyC6NTYRX0bicakgu9
 ut4=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 16:35:06 -0700
IronPort-SDR: HjtnEq/ZDxBBI34D8ZTy6qO+GfgGOhyReh1NQKc9r0TZn/rXYt83xPaOndz8m/1qolES7+8s8I
 fvvj5O3qNk7y1qvi2jz5XhLwV6Zg9PPGfaOwUwW+rDVhfp43hG+zNTCLZaBtfa/cNJ5t4i5ONU
 jzjdjuPoklz0NU6R1LMfsFm9ZYlTPlSTGt+cfuF2u2uCzAICzI+cyIO0a26uTL0Qz2GXyIkS6L
 rZYST0VZ+KZtKxXO4oC3ZDi+xEc4wUiS8Dj+Blu+KsC3r4zZpjHsCCiBHMUsSUEjE0REveWWIn
 8BE=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
 by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 17:24:38 -0700
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
 by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4Pn41J2Z0fz1RtVy
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 29 Mar 2023 17:24:36 -0700 (PDT)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
 reason="pass (just generated, assumed good)"
 header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
 opensource.wdc.com; h=content-transfer-encoding:content-type
 :in-reply-to:organization:from:references:to:content-language
 :subject:user-agent:mime-version:date:message-id; s=dkim; t=
 1680135875; x=1682727876; bh=Qt1x7YVxfqzn+HD4mjAgVT20c57AOdxOnsX
 sCs1FA/w=; b=QYxDsIVMrmX6uf+9bVUxwnELpwLFtWbRMF/Nt94gTpOQqsLyuHo
 PXJiVZbl3870VsxXn8brpbI6uXwWHk7stsw+5gkioY211aQ4o7Uwst47JscjbQrE
 K99N0ESBwKRwcJ19lOavdNixjywODC+7YTyIWnQWpWiZ7LOJA65a1Dktc5vhkT82
 znVNQgKCEILTiX4ZJrtUa8z6RLlEDM8bBMpnfRTy9OPKQbfOM5lFjJG9REul1WDJ
 YusjXPCg9SHR5Djh+zW5IEAVq4UBPEDGxuvLD8JkqpT7PkTcGPvdn28OEWHZvMVg
 2Mi24TQl4Lz1GQlrFjxVXjdvpPxbmdednfA==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
 by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new,
 port 10026)
 with ESMTP id r6bun9PkgXit for <jfs-discussion@lists.sourceforge.net>;
 Wed, 29 Mar 2023 17:24:35 -0700 (PDT)
Received: from [10.225.163.116] (unknown [10.225.163.116])
 by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4Pn41C5RmQz1RtVm;
 Wed, 29 Mar 2023 17:24:31 -0700 (PDT)
Message-ID: <b19696d3-54bb-d997-5e56-aa5fd58b469f@opensource.wdc.com>
Date: Thu, 30 Mar 2023 09:24:30 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: Yang Shi <shy828301@gmail.com>
References: <cover.1680108414.git.johannes.thumshirn@wdc.com>
 <beea645603eccbb045ad9bb777e05a085b91808a.1680108414.git.johannes.thumshirn@wdc.com>
 <3a0f0c92-63cb-3624-c2fe-049a76d1a64a@opensource.wdc.com>
 <CAHbLzkoRdTTbnfz3RyLQAeNJBOEVNGL2WLgRSE2eQ4nR8sRe2g@mail.gmail.com>
Organization: Western Digital Research
In-Reply-To: <CAHbLzkoRdTTbnfz3RyLQAeNJBOEVNGL2WLgRSE2eQ4nR8sRe2g@mail.gmail.com>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 3/30/23 09:17, Yang Shi wrote: > On Wed, Mar 29, 2023 at
    4:49 PM Damien Le Moal > <damien.lemoal@opensource.wdc.com> wrote: >> >>
    On 3/30/23 02:06, Johannes Thumshirn wrote: >>> Check if adding p [...] 
 
 Content analysis details:   (-2.5 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [216.71.154.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1phg5s-008wW4-Kq
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
From: Damien Le Moal via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Damien Le Moal <damien.lemoal@opensource.wdc.com>
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

T24gMy8zMC8yMyAwOToxNywgWWFuZyBTaGkgd3JvdGU6Cj4gT24gV2VkLCBNYXIgMjksIDIwMjMg
YXQgNDo0OeKAr1BNIERhbWllbiBMZSBNb2FsCj4gPGRhbWllbi5sZW1vYWxAb3BlbnNvdXJjZS53
ZGMuY29tPiB3cm90ZToKPj4KPj4gT24gMy8zMC8yMyAwMjowNiwgSm9oYW5uZXMgVGh1bXNoaXJu
IHdyb3RlOgo+Pj4gQ2hlY2sgaWYgYWRkaW5nIHBhZ2VzIHRvIGNsb25lIGJpbyBmYWlscyBhbmQg
aWYgYmFpbCBvdXQuCj4+Cj4+IE5vcGUuIFRoZSBjb2RlIHJldHJpZXMgd2l0aCBkaXJlY3QgcmVj
bGFpbSB1bnRpbCBpdCBzdWNjZWVkcy4gV2hpY2ggaXMgdmVyeQo+PiBzdXNwaWNpb3VzLi4uCj4g
Cj4gSXQgaXMgbm90IHJlbGF0ZWQgdG8gYmlvX2FkZF9wYWdlKCkgZmFpbHVyZS4gSXQgaXMgdXNl
ZCB0byBhdm9pZCBhCj4gcmFjZSBjb25kaXRpb24gd2hlbiB0d28gcHJvY2Vzc2VzIGFyZSBkZXBs
ZXRpbmcgdGhlIG1lbXBvb2wKPiBzaW11bHRhbmVvdXNseS4KPiAKPiBJSVVDIEkgZG9uJ3QgdGhp
bmsgcGFnZSBtZXJnZSBtYXkgaGFwcGVuIGZvciBkbS1jcnlwdCwgc28gaXMKPiBfX2Jpb19hZGRf
cGFnZSgpIGdvb2QgZW5vdWdoPyBJJ20gd29ya2luZyBvbiB0aGlzIGNvZGUgdG9vLCB1c2luZwo+
IF9fYmlvX2FkZF9wYWdlKCkgd291bGQgbWFrZSBteSBwYXRjaCBlYXNpZXIuCgpJZiB0aGUgQklP
IHdhcyBhbGxvY2F0ZWQgd2l0aCBlbm91Z2ggYnZlY3MsIHdlIGNvdWxkIHVzZSB0aGF0IGZ1bmN0
aW9uLiBCdXQgcGFnZQptZXJnaW5nIHJlZHVjZXMgb3ZlcmhlYWQsIHNvIGlmIGl0IGNhbiBoYXBw
ZW4sIGxldCdzIHVzZSBpdC4KCj4gCj4+Cj4+Pgo+Pj4gVGhpcyB3YXkgd2UgY2FuIG1hcmsgYmlv
X2FkZF9wYWdlcyBhcyBfX211c3RfY2hlY2suCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogSm9oYW5u
ZXMgVGh1bXNoaXJuIDxqb2hhbm5lcy50aHVtc2hpcm5Ad2RjLmNvbT4KPj4KPj4gV2l0aCB0aGUg
Y29tbWl0IG1lc3NhZ2UgZml4ZWQsCj4+Cj4+IFJldmlld2VkLWJ5OiBEYW1pZW4gTGUgTW9hbCA8
ZGFtaWVuLmxlbW9hbEBvcGVuc291cmNlLndkYy5jb20+Cj4+Cj4+Cj4+IC0tCj4+IERhbWllbiBM
ZSBNb2FsCj4+IFdlc3Rlcm4gRGlnaXRhbCBSZXNlYXJjaAo+Pgo+PgoKLS0gCkRhbWllbiBMZSBN
b2FsCldlc3Rlcm4gRGlnaXRhbCBSZXNlYXJjaAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpKZnMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRp
c2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2Uu
bmV0L2xpc3RzL2xpc3RpbmZvL2pmcy1kaXNjdXNzaW9uCg==
