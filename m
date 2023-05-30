Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C1AA71676A
	for <lists+jfs-discussion@lfdr.de>; Tue, 30 May 2023 17:45:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q41X4-0007uO-HT;
	Tue, 30 May 2023 15:45:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <axboe@kernel.dk>) id 1q41X3-0007uI-IR
 for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 15:45:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tp/ySIwwm4tl/YIed7+PvRfuzdgg1UhCSe2CIK+Ly+s=; b=f3OwQv210veoLFV1nkwbsXv+9D
 KCgd41MqZBwvTvMzzlIhfibmCFm8Thl4LhrgnGDxbwf0V+oIW4QuCUUJIc/3XajiaX9+uebV/F1NB
 /Yqw8bmRBUy6IeCt077WFFMuf3m/QPZFpTcUO7fLPXXpQdPn0DqdW9q4v3hOKnQzIzDE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tp/ySIwwm4tl/YIed7+PvRfuzdgg1UhCSe2CIK+Ly+s=; b=lAyb4GJFpiotl3Zq7P1jzsG4hI
 oU+DblFX9goYza9Za518IKe1sXbNrabOVYbAqKJMCRbISAsUDfb+JGZ/RPJcRKIGZogwT1AEndsq2
 ZCmpwerZbALrqqDNFmvB0VEfhmjvjImt2S6F4M0ekfvT8vr4R6KNWhu8eBZcMmKaxnc0=;
Received: from mail-oo1-f43.google.com ([209.85.161.43])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1q41Wu-0003s0-K9 for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 15:45:09 +0000
Received: by mail-oo1-f43.google.com with SMTP id
 006d021491bc7-55592287480so488126eaf.1
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 30 May 2023 08:45:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20221208.gappssmtp.com; s=20221208; t=1685461495; x=1688053495;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=tp/ySIwwm4tl/YIed7+PvRfuzdgg1UhCSe2CIK+Ly+s=;
 b=umA/DF5IAG9Bj/PJ0pdV00mspujK6i9GeZycXsxeA2q7MJSASMiVbyWlWbo272jlXx
 sXQQAk/V3Cmf5+Qt766bH5CtMwFupxqjIqdKO4W9IEbin74ZeYKcTntuzQfNp2o4LT9C
 PV9+/VR+dWhsFmvKiOq9BIZt6CET3myNYUyA6E0PIxuFEdmDIvfjQQT/dIukyu0SYrM1
 4Ur5d2ujkRnbEInrd9IfSNwQ/1nqYVa0z60KuKbmD9uWXjpMujfQYJIIrpuywotrILMs
 wxQspE5geoyp7fhCRBGVUTkPoD9fyhXtFYJ+C1tvAeXhiQ0oxcWjnzq7uFswitI+d91p
 DHbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685461495; x=1688053495;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=tp/ySIwwm4tl/YIed7+PvRfuzdgg1UhCSe2CIK+Ly+s=;
 b=ToJHy1wpLLheCQiDFfHi4zT8IrhdDi7yEtjtrGp86CozZko8Rs9HChm6YUSpj0MTeF
 5459Tyz8dLylBlmwqun9CsLW79Xq2YomLYFokVJqmIo7czCPEG9Q7S2ehg9f/LdDmWsc
 PaOVUC57Hm5vyRvxSpvpWWL8ZfMvcxLC4TZXq0W/3s9vssqmpkHlQ/vWKLw1rQ3E02G8
 LLj+5CA9tg7wSRmKguEYCxaIsJ7Ttb/rK+TGgrxKCG7HNYXULMs366jlzMJci4LLVhdH
 OP6HMSqhT/pLlCsZ+rGDtdTxAw3ANZvwUqb3VDYSMAZ+W7xzTjQql1gpH6KGF9Gt50cL
 ij1A==
X-Gm-Message-State: AC+VfDzM2f6YvR0iIhPN+iymhefeHX8Ra7cXD0o6W8XjQgT5ZRh1Sz7C
 n29nshH3VYtFKmJq1qWqZakutpNibWCoa8b2Lyg=
X-Google-Smtp-Source: ACHHUZ5N9fZwp0C4udilf2wbvP/vXNdHUtnkR6kuIJ7hXoCHV8PblKq9G6f5VgAxs1O6gmhEp8JA/Q==
X-Received: by 2002:a05:6e02:ef3:b0:33b:85f4:2edf with SMTP id
 j19-20020a056e020ef300b0033b85f42edfmr1197714ilk.1.1685459689656; 
 Tue, 30 May 2023 08:14:49 -0700 (PDT)
Received: from [192.168.1.94] ([96.43.243.2]) by smtp.gmail.com with ESMTPSA id
 i9-20020a056e02054900b00325df6679a7sm2575003ils.26.2023.05.30.08.14.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 30 May 2023 08:14:47 -0700 (PDT)
Message-ID: <bc5833bc-1c78-8d9b-69f8-1401b673b861@kernel.dk>
Date: Tue, 30 May 2023 09:14:46 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Johannes Thumshirn <Johannes.Thumshirn@wdc.com>,
 "dm-devel@redhat.com" <dm-devel@redhat.com>,
 "snitzer@kernel.org" <snitzer@kernel.org>
References: <20230502101934.24901-1-johannes.thumshirn@wdc.com>
 <3235f123-0638-b39f-f902-426059b87f81@kernel.dk>
 <efedff15-af48-31e5-2834-d8a879f1e6d2@wdc.com>
From: Jens Axboe <axboe@kernel.dk>
In-Reply-To: <efedff15-af48-31e5-2834-d8a879f1e6d2@wdc.com>
X-Spam-Score: -2.0 (--)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 5/26/23 12:37 AM, Johannes Thumshirn wrote: > On 24.05.23
    17:02, Jens Axboe wrote: >> On 5/2/23 4:19?AM, Johannes Thumshirn wrote:
   >>> We have two functions for adding a page to a bio, __bio_add_ [...] 
 
 Content analysis details:   (-2.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.161.43 listed in list.dnswl.org]
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.161.43 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1q41Wu-0003s0-K9
Subject: Re: [Jfs-discussion] [PATCH v5 00/20] bio: check return values of
 bio_add_page
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
Cc: "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 Damien Le Moal <Damien.LeMoal@wdc.com>, "kch@nvidia.com" <kch@nvidia.com>,
 "agruenba@redhat.com" <agruenba@redhat.com>,
 "shaggy@kernel.org" <shaggy@kernel.org>, "song@kernel.org" <song@kernel.org>,
 "jfs-discussion@lists.sourceforge.net" <jfs-discussion@lists.sourceforge.net>,
 "willy@infradead.org" <willy@infradead.org>,
 "ming.lei@redhat.com" <ming.lei@redhat.com>,
 "cluster-devel@redhat.com" <cluster-devel@redhat.com>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>, "hare@suse.de" <hare@suse.de>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 "linux-raid@vger.kernel.org" <linux-raid@vger.kernel.org>,
 "hch@lst.de" <hch@lst.de>, "rpeterso@redhat.com" <rpeterso@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gNS8yNi8yMyAxMjozN+KAr0FNLCBKb2hhbm5lcyBUaHVtc2hpcm4gd3JvdGU6Cj4gT24gMjQu
MDUuMjMgMTc6MDIsIEplbnMgQXhib2Ugd3JvdGU6Cj4+IE9uIDUvMi8yMyA0OjE5P0FNLCBKb2hh
bm5lcyBUaHVtc2hpcm4gd3JvdGU6Cj4+PiBXZSBoYXZlIHR3byBmdW5jdGlvbnMgZm9yIGFkZGlu
ZyBhIHBhZ2UgdG8gYSBiaW8sIF9fYmlvX2FkZF9wYWdlKCkgd2hpY2ggaXMKPj4+IHVzZWQgdG8g
YWRkIGEgc2luZ2xlIHBhZ2UgdG8gYSBmcmVzaGx5IGNyZWF0ZWQgYmlvIGFuZCBiaW9fYWRkX3Bh
Z2UoKSB3aGljaCBpcwo+Pj4gdXNlZCB0byBhZGQgYSBwYWdlIHRvIGFuIGV4aXN0aW5nIGJpby4K
Pj4+Cj4+PiBXaGlsZSBfX2Jpb19hZGRfcGFnZSgpIGlzIGV4cGVjdGVkIHRvIHN1Y2NlZWQsIGJp
b19hZGRfcGFnZSgpIGNhbiBmYWlsLgo+Pj4KPj4+IFRoaXMgc2VyaWVzIGNvbnZlcnRzIHRoZSBj
YWxsZXJzIG9mIGJpb19hZGRfcGFnZSgpIHdoaWNoIGNhbiBlYXNpbHkgdXNlCj4+PiBfX2Jpb19h
ZGRfcGFnZSgpIHRvIHVzaW5nIGl0IGFuZCBjaGVja3MgdGhlIHJldHVybiBvZiBiaW9fYWRkX3Bh
Z2UoKSBmb3IKPj4+IGNhbGxlcnMgdGhhdCBkb24ndCB3b3JrIG9uIGEgZnJlc2hseSBjcmVhdGVk
IGJpby4KPj4+Cj4+PiBMYXN0bHkgaXQgbWFya3MgYmlvX2FkZF9wYWdlKCkgYXMgX19tdXN0X2No
ZWNrIHNvIHdlIGRvbid0IGhhdmUgdG8gZ28gYWdhaW4KPj4+IGFuZCBhdWRpdCBhbGwgY2FsbGVy
cy4KPj4KPj4gTG9va3MgZmluZSB0byBtZSwgdGhvdWdoIGl0IHdvdWxkIGJlIG5pY2UgaWYgdGhl
IGZzIGFuZCBkbSBwZW9wbGUgY291bGQKPj4gZ2l2ZSB0aGlzIGEgcXVpY2sgbG9vay4gU2hvdWxk
IG5vdCB0YWtlIGxvbmcsIGFueSBlbXB0eSBiaW8gYWRkaXRpb24KPj4gc2hvdWxkLCBieSBkZWZp
bml0aW9uLCBiZSBhYmxlIHRvIHVzZSBhIG5vbi1jaGVja2VkIHBhZ2UgYWRkaXRpb24gZm9yCj4+
IHRoZSBmaXJzdCBwYWdlLgo+Pgo+IAo+IEkgdGhpbmsgdGhlIEZTIHNpZGUgaXMgYWxsIGNvdmVy
ZWQuIEBNaWtlIGNvdWxkIHlvdSBoYXZlIGEgbG9vayBhdCB0aGUgZG0KPiBwYXRjaGVzPwoKTm90
IHRoZSBpb21hcCBvbmUsIHRoYXQgd2FzIG15IG1haW4gY29uY2Vybi4gTm90IHRoYXQgdGhpcyBp
cyB0cmlja3kgc3R1ZmYsCmJ1dCBzdGlsbC4uLgoKLS0gCkplbnMgQXhib2UKCgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkpmcy1kaXNjdXNzaW9uIG1h
aWxpbmcgbGlzdApKZnMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9s
aXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vamZzLWRpc2N1c3Npb24K
