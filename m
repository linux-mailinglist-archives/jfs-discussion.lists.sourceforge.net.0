Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D3ED6D63F4
	for <lists+jfs-discussion@lfdr.de>; Tue,  4 Apr 2023 15:52:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pjh5D-000755-NA;
	Tue, 04 Apr 2023 13:52:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <morbidrsa@gmail.com>) id 1pjc0B-0003VV-2k
 for jfs-discussion@lists.sourceforge.net;
 Tue, 04 Apr 2023 08:26:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=P+IA0sfS8Hko6hpK1HZztJ6kiawc/hgiN78OoxbJlkE=; b=FY0+WpN9nF67KigO40ro3FcGA/
 vj4ncx8n80uzo+XkPEgRG6LT8UY1855o365mNX/SlgH/XnmgnviSQEswDZkPQ/GHY7s97aIywnOb5
 yW2Xgf4gBld6COIY4UoxcqXHliIwWPLoFfiREPjAJdFIxLJnkANAHF4AUzhGBpHpOEtQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=P+IA0sfS8Hko6hpK1HZztJ6kiawc/hgiN78OoxbJlkE=; b=FzxSNkDUSjdLvd4wFHqXrhcfEG
 931wbD3suXtCmdTno4F++d32OnTlIrFVfyQFERRA1WqFuPm+QO2fPI058MZPNd6Heh3t4LegVkEM2
 WPsSi99kM/WoIU/KGBJI5EFNVDIR+koM5mP62MjUtJRTefod7nPNVCzxTpZUu9KQXn70=;
Received: from mail-wr1-f53.google.com ([209.85.221.53])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pjc00-0005Q0-2f for jfs-discussion@lists.sourceforge.net;
 Tue, 04 Apr 2023 08:26:48 +0000
Received: by mail-wr1-f53.google.com with SMTP id l27so31878767wrb.2
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 04 Apr 2023 01:26:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680596793;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=P+IA0sfS8Hko6hpK1HZztJ6kiawc/hgiN78OoxbJlkE=;
 b=4vAaUD1F4HQfmA8MR6PzAqG95MrA8pRdh/aYFLY48cN2PcD6cDCcmw7jf8IIKck1zZ
 H8uWj0SOMOIvsHrDwa1dxukjIEPpXs2HteAPoXF/+4AYhTBKBEH+CDD4w7k1JyGrIcNN
 +nKiPLMznrxo6CcEZc92JSYi+eRwgzaeP/rG5Z8g0MYsf8sASf87X6ahNNHoraQGzcBm
 Tc7QH57kPQnZaIRbTpE7lrOLKqgwIEQwN1naDk36bkk1tBOWzy1mUQZfzPD8yk+9yF1E
 peWIlEM0CkJRco/7bxiSMfve2ZIp2MyhgZwBp6z5eD5KNtYtgV2dUUMNa+86f20KWtXP
 WyGw==
X-Gm-Message-State: AAQBX9ehRLi29cgHRp2W/w517gT0/JEhvRxtrK4krQiTrfi1P0tqEmcp
 JUpy43e5QkRLgCi895nmAlU=
X-Google-Smtp-Source: AKy350YRAl3M0jE5+UynIwckjiW+CsHm28SGM1LHNiMQ7J8tXe8xmw1F2qmXD/R4sfgmgOX6wBeBhg==
X-Received: by 2002:adf:e0c3:0:b0:2cf:e747:b0d4 with SMTP id
 m3-20020adfe0c3000000b002cfe747b0d4mr940685wri.40.1680596793398; 
 Tue, 04 Apr 2023 01:26:33 -0700 (PDT)
Received: from [192.168.32.129] (aftr-82-135-86-174.dynamic.mnet-online.de.
 [82.135.86.174]) by smtp.gmail.com with ESMTPSA id
 t6-20020a7bc3c6000000b003ee1b2ab9a0sm14294575wmj.11.2023.04.04.01.26.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 04 Apr 2023 01:26:32 -0700 (PDT)
Message-ID: <bbc98aa3-24f0-8ee6-9d74-483564a14f0f@kernel.org>
Date: Tue, 4 Apr 2023 10:26:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
To: Song Liu <song@kernel.org>, Johannes Thumshirn <johannes.thumshirn@wdc.com>
References: <cover.1680172791.git.johannes.thumshirn@wdc.com>
 <8b8a3bb2db8c5183ef36c1810f2ac776ac526327.1680172791.git.johannes.thumshirn@wdc.com>
 <CAPhsuW7a+mpn+VprfA2mC5Fc+M9BFq8i6d-y+-o5G1u5dOsk2Q@mail.gmail.com>
Content-Language: en-US
From: Johannes Thumshirn <jth@kernel.org>
In-Reply-To: <CAPhsuW7a+mpn+VprfA2mC5Fc+M9BFq8i6d-y+-o5G1u5dOsk2Q@mail.gmail.com>
X-Spam-Score: -1.4 (-)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 31/03/2023 20:13, Song Liu wrote: > On Thu, Mar 30, 2023
    at 3:44 AM Johannes Thumshirn > <johannes.thumshirn@wdc.com> wrote: >>
   >> Check if adding pages to resync bio fails and if bail out. >> >> [...] 
 
 Content analysis details:   (-1.4 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.221.53 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [morbidrsa[at]gmail.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.221.53 listed in wl.mailspike.net]
  0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
                             EnvelopeFrom freemail headers are
                             different
 -1.9 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1pjc00-0005Q0-2f
X-Mailman-Approved-At: Tue, 04 Apr 2023 13:52:22 +0000
Subject: Re: [Jfs-discussion] [PATCH v2 17/19] md: raid1: check if adding
 pages to resync bio fails
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gMzEvMDMvMjAyMyAyMDoxMywgU29uZyBMaXUgd3JvdGU6Cj4gT24gVGh1LCBNYXIgMzAsIDIw
MjMgYXQgMzo0NOKAr0FNIEpvaGFubmVzIFRodW1zaGlybgo+IDxqb2hhbm5lcy50aHVtc2hpcm5A
d2RjLmNvbT4gd3JvdGU6Cj4+Cj4+IENoZWNrIGlmIGFkZGluZyBwYWdlcyB0byByZXN5bmMgYmlv
IGZhaWxzIGFuZCBpZiBiYWlsIG91dC4KPj4KPj4gQXMgdGhlIGNvbW1lbnQgYWJvdmUgc3VnZ2Vz
dHMgdGhpcyBjYW5ub3QgaGFwcGVuLCBXQVJOIGlmIGl0IGFjdHVhbGx5Cj4+IGhhcHBlbnMuCj4+
Cj4+IFRoaXMgd2F5IHdlIGNhbiBtYXJrIGJpb19hZGRfcGFnZXMgYXMgX19tdXN0X2NoZWNrLgo+
Pgo+PiBTaWduZWQtb2ZmLWJ5OiBKb2hhbm5lcyBUaHVtc2hpcm4gPGpvaGFubmVzLnRodW1zaGly
bkB3ZGMuY29tPgo+PiBSZXZpZXdlZC1ieTogRGFtaWVuIExlIE1vYWwgPGRhbWllbi5sZW1vYWxA
b3BlbnNvdXJjZS53ZGMuY29tPgo+PiAtLS0KPj4gICBkcml2ZXJzL21kL3JhaWQxLTEwLmMgfCAg
NyArKysrKystCj4+ICAgZHJpdmVycy9tZC9yYWlkMTAuYyAgIHwgMTIgKysrKysrKysrKy0tCj4+
ICAgMiBmaWxlcyBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Pgo+
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZC9yYWlkMS0xMC5jIGIvZHJpdmVycy9tZC9yYWlkMS0x
MC5jCj4+IGluZGV4IGU2MWY2Y2FkNGUwOC4uYzIxYjZjMTY4NzUxIDEwMDY0NAo+PiAtLS0gYS9k
cml2ZXJzL21kL3JhaWQxLTEwLmMKPj4gKysrIGIvZHJpdmVycy9tZC9yYWlkMS0xMC5jCj4+IEBA
IC0xMDUsNyArMTA1LDEyIEBAIHN0YXRpYyB2b2lkIG1kX2Jpb19yZXNldF9yZXN5bmNfcGFnZXMo
c3RydWN0IGJpbyAqYmlvLCBzdHJ1Y3QgcmVzeW5jX3BhZ2VzICpycCwKPj4gICAgICAgICAgICAg
ICAgICAgKiB3b24ndCBmYWlsIGJlY2F1c2UgdGhlIHZlYyB0YWJsZSBpcyBiaWcKPj4gICAgICAg
ICAgICAgICAgICAgKiBlbm91Z2ggdG8gaG9sZCBhbGwgdGhlc2UgcGFnZXMKPj4gICAgICAgICAg
ICAgICAgICAgKi8KPiAKPiBXZSBrbm93IHRoZXNlIHdvbid0IGZhaWwuIFNoYWxsIHdlIGp1c3Qg
dXNlIF9fYmlvX2FkZF9wYWdlPwoKV2UgY291bGQgeWVzLCBidXQgSSBraW5kIG9mIGxpa2UgdGhl
IGFzc2VydCgpIHN0eWxlIHdhcm5pbmcuCkJ1dCBvZiBjYXVzZSB1bHRpbWF0ZWx5IHlvdXIgY2Fs
bC4KCkJ5dGUsCglKb2hhbm5lcwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkpmcy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdApKZnMtZGlzY3Vzc2lvbkBs
aXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMv
bGlzdGluZm8vamZzLWRpc2N1c3Npb24K
