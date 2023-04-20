Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 51A216E8D54
	for <lists+jfs-discussion@lfdr.de>; Thu, 20 Apr 2023 10:56:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ppQ4p-0007Bp-JM;
	Thu, 20 Apr 2023 08:55:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <morbidrsa@gmail.com>) id 1ppQ4o-0007Bj-CK
 for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Apr 2023 08:55:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Z3oaCtnRgdVnX+/49rnLNjwqRbR+N3XhGwT33lpTGps=; b=IRiHl8uS9OJYSwPgy1004M3V7Y
 cEjHKaKheYvFBiEBES5lt7o50tuFOxcSWPJmkxyeZxwZns8gzgY+WYS9aqck39zNTUPzxtKfRwWbR
 SQr+wq4vlX2QrUwtYlJuWirhCXFP7qpMo/rL7fFyo1tTnAj903GRjWK5BjM58SKBiNWk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Z3oaCtnRgdVnX+/49rnLNjwqRbR+N3XhGwT33lpTGps=; b=VKiddIeyuQNd/uEDmuAuruEoHK
 e2EarNXjiXlWTDtYo23z2q+89b7g2RSTnW1TWu0KB4tU3/FpJ67diMZ0IAvzekSewbnf5tCLxne8Q
 81looFSSnCQGaR1BZJOCQLAVRegwfEoWWTQNnfVhVtxzKnHwW7HgDl1pS7LBzgxZKEuc=;
Received: from mail-wm1-f41.google.com ([209.85.128.41])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ppQ4o-0000rm-P3 for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Apr 2023 08:55:39 +0000
Received: by mail-wm1-f41.google.com with SMTP id
 bi21-20020a05600c3d9500b003f17a8eaedbso2706702wmb.1
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 20 Apr 2023 01:55:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681980932; x=1684572932;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Z3oaCtnRgdVnX+/49rnLNjwqRbR+N3XhGwT33lpTGps=;
 b=NNGG7eC3ozWkqlu++BQ7jsSPgTMRbVe4lURsdYJ7XbOjeD+ee51vrHKIL8s1m8HTPz
 dwqRZTdlsUGK+v0VzjSXefuaFH1G94URqc7BNANIVC/rkiwiWAlCB17yi1a2kdvT84JN
 ersCDcyTY463C5hoOtIbJRbd7zzi6CbMCrkeOvNjxAHem3DBj6qjk5sJbVAIuQ+DCyqY
 HMYn1YBClArozUSflwihJUOYl+ca5wOlXmYrcHSmThzz/YBzTs5OUyyT4sdPIJo7XGsn
 lIG4fTXBM6mioszeSHgnjOTyWZ9EAf8MkQzEe59ivaRA5JG0UF4AtZ/FJ+VhLvREWrmO
 qfMA==
X-Gm-Message-State: AAQBX9cYbWr7iHShVVctpRFSV/+FtOuBt2FyW7hnNPKDYwjccXhU2ye7
 cYuzKMPJknxIjoKESDl0Pyw=
X-Google-Smtp-Source: AKy350bKYLeXMzDzDJ6Y6qo/aThxWX/i4drIepoJR2AxRlr5KQ8S+fMnYJCtI7ItM3tNru7pKV43XQ==
X-Received: by 2002:a05:600c:acf:b0:3f1:72e6:2a69 with SMTP id
 c15-20020a05600c0acf00b003f172e62a69mr740456wmr.4.1681980932068; 
 Thu, 20 Apr 2023 01:55:32 -0700 (PDT)
Received: from [192.168.32.129] (aftr-62-216-205-152.dynamic.mnet-online.de.
 [62.216.205.152]) by smtp.gmail.com with ESMTPSA id
 ip29-20020a05600ca69d00b003f1712b1402sm4669681wmb.30.2023.04.20.01.55.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 20 Apr 2023 01:55:31 -0700 (PDT)
Message-ID: <0028b1b9-980a-4b3b-b290-099368e44f9f@kernel.org>
Date: Thu, 20 Apr 2023 10:55:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
To: Andreas Gruenbacher <agruenba@redhat.com>
References: <20230419140929.5924-1-jth@kernel.org>
 <20230419140929.5924-12-jth@kernel.org>
 <CAHc6FU6U1yZguZGeCc7BUqd1Qm4+SSRK8xbNZWBUSXTk_jjvVQ@mail.gmail.com>
Content-Language: en-US
From: Johannes Thumshirn <jth@kernel.org>
In-Reply-To: <CAHc6FU6U1yZguZGeCc7BUqd1Qm4+SSRK8xbNZWBUSXTk_jjvVQ@mail.gmail.com>
X-Spam-Score: -1.2 (-)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 19/04/2023 17:19, Andreas Gruenbacher wrote: > On Wed,
   Apr 19, 2023 at 4:10 PM Johannes Thumshirn <jth@kernel.org> wrote: >> >>
    From: Johannes Thumshirn <johannes.thumshirn@wdc.com> >> >> The GFS [...]
    
 
 Content analysis details:   (-1.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.128.41 listed in list.dnswl.org]
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [morbidrsa[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.128.41 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
                             EnvelopeFrom freemail headers are
                             different
 -1.7 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1ppQ4o-0000rm-P3
Subject: Re: [Jfs-discussion] [PATCH v3 11/19] gfs: use __bio_add_page for
 adding single page to bio
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
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net, linux-mm@kvack.org,
 dm-devel@redhat.com, hch@lst.de,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>, willy@infradead.org,
 cluster-devel@redhat.com, kch@nvidia.com, snitzer@kernel.org,
 ming.lei@redhat.com, linux-block@vger.kernel.org, rpeterso@redhat.com,
 hare@suse.de, dsterba@suse.com, axboe@kernel.dk, linux-raid@vger.kernel.org,
 damien.lemoal@wdc.com, song@kernel.org, johannes.thumshirn@wdc.com,
 linux-fsdevel@vger.kernel.org, linux-btrfs@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gMTkvMDQvMjAyMyAxNzoxOSwgQW5kcmVhcyBHcnVlbmJhY2hlciB3cm90ZToKPiBPbiBXZWQs
IEFwciAxOSwgMjAyMyBhdCA0OjEw4oCvUE0gSm9oYW5uZXMgVGh1bXNoaXJuIDxqdGhAa2VybmVs
Lm9yZz4gd3JvdGU6Cj4+Cj4+IEZyb206IEpvaGFubmVzIFRodW1zaGlybiA8am9oYW5uZXMudGh1
bXNoaXJuQHdkYy5jb20+Cj4+Cj4+IFRoZSBHRlMgc3VwZXJibG9jayByZWFkaW5nIGNvZGUgdXNl
cyBiaW9fYWRkX3BhZ2UoKSB0byBhZGQgYSBwYWdlIHRvIGEKPj4gbmV3bHkgY3JlYXRlZCBiaW8u
IGJpb19hZGRfcGFnZSgpIGNhbiBmYWlsLCBidXQgdGhlIHJldHVybiB2YWx1ZSBpcyBuZXZlcgo+
PiBjaGVja2VkLgo+IAo+IEl0J3MgR0ZTMiwgbm90IEdGUywgYnV0IG90aGVyd2lzZSB0aGlzIGlz
IG9idmlvdXNseSBmaW5lLCB0aGFua3MuCj4gCgpPb3BzIGZpeGVkIGluIHY0CgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkpmcy1kaXNjdXNzaW9uIG1h
aWxpbmcgbGlzdApKZnMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9s
aXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vamZzLWRpc2N1c3Npb24K
