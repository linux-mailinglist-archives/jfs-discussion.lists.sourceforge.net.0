Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED4BAA099A
	for <lists+jfs-discussion@lfdr.de>; Tue, 29 Apr 2025 13:32:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:References:To:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FAZt5d1Rd317xsZPZY3F7tI0OILKLFMtbOMa957M8yQ=; b=PlgBEXXv+626+pQ7tfZXPiSJvc
	fuk3tHoa2Yhs7LchPE8o6IZqU/jOFSbgmes9IAgJgG94l86M922gtmeKEL3YcWXMHgjgoBVgzb2QS
	7eTNhIOiE7a7EII/jfBtQOfa8ccQG4iNt5DD+6b3QyEF6OgxRu3U2S9jaKfvw8hUaz64=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1u9jBT-000734-Tm;
	Tue, 29 Apr 2025 11:31:31 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <david@redhat.com>) id 1u9jBR-00072x-Q0
 for jfs-discussion@lists.sourceforge.net;
 Tue, 29 Apr 2025 11:31:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rGFSkL0z4QHTG2QpNf64SqnlUwXhFfw26Pfg2nP/yBs=; b=mi4PXzrzBe/jQRdYQJ8TE9lhOy
 jex1AgLlFG77+TWu2+wTrCwlaILV3kiqsraDa9Ip7+32nyaBNg/7KNpwH7Yh3qeMPetIX6sK/Qq80
 GAPXS/KBoEa1SL0wvGGX24+22mZxpkR9EhpkwhpOLIB5NJh3WAETu55hi07LjY8OJSk8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rGFSkL0z4QHTG2QpNf64SqnlUwXhFfw26Pfg2nP/yBs=; b=FC36NtS0nxBNGx7pI91CTPHY86
 FUA4KZySQFs98ZjDPMgYilGJvAZZK6sijl0ccgxWZgAa17+MknQL+BnWIF8ncAhi1P4bAznLKYR5X
 C6r/Br5gJCUdIo+tQmPZNxPK5o8rWOC6u/VmckFZ+G6VVVSfmI+JZnu/y5HMLWUCZGsk=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1u9jBA-0008EE-Qt for jfs-discussion@lists.sourceforge.net;
 Tue, 29 Apr 2025 11:31:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1745926266;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=rGFSkL0z4QHTG2QpNf64SqnlUwXhFfw26Pfg2nP/yBs=;
 b=bwcTUO4lOK+i9GJuWvQ29soAk705UrkX6h+zHe96ZHnynxhvuf6EQnVQ/4RDztpvm9lC+L
 PQcdmarmnpTOs0ndafFih0HqE+ZXXhwphxNgK+2p4hISAu9Pss3sZ9OpV3H/zUHMJ4MNJN
 EeDojT/MSSOVXX8FvzUYJW+uxMPMfMg=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-590-lntOQn9AMoauRA6jqzX8fw-1; Tue, 29 Apr 2025 07:31:05 -0400
X-MC-Unique: lntOQn9AMoauRA6jqzX8fw-1
X-Mimecast-MFC-AGG-ID: lntOQn9AMoauRA6jqzX8fw_1745926264
Received: by mail-wm1-f71.google.com with SMTP id
 5b1f17b1804b1-43cf3168b87so27751785e9.2
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 29 Apr 2025 04:31:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745926264; x=1746531064;
 h=content-transfer-encoding:in-reply-to:organization:autocrypt
 :content-language:from:references:cc:to:subject:user-agent
 :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
 :date:message-id:reply-to;
 bh=rGFSkL0z4QHTG2QpNf64SqnlUwXhFfw26Pfg2nP/yBs=;
 b=badzEqRrZxsceTjPDwj9LO0YyUeM/hiFYahvRK1RiuyxGvZ8C6Sp8Vs8JPOtdbXBgb
 6dC/QUAkuj8nm80RJfkywiYvMsD3oLh7Lb05E+qDIYx3OBWA5EUCXm1E0LUIr79du6d3
 IRzwk7J/zcAbOUjfeZSFd7BGWj8xcAeA6SbhTW0Lfr5536H6dvo+EufhS9Ymwl77TEYb
 XkBOBOac4tjuFwg/lVeO+TBr1qSrmqVbxguRIrc9xdC1dIG4PokkweYpwVjZOoViyw4t
 Aahuct+BB4yCfCMEFolMQ/o2b+ye0GVy8DwACNqstKjTPVzlyJtSyDY6+ebXzq3OB/3E
 n/SQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXh1Zfiw+WTtz7KixGfDGjVW4n2+Tpz1G6xksnlGB5jSx2HfNjeuN9iRrm97k/ePZb1V8bQynfCKprYUYHROw==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YxMVjrc/kMFtjgjh58TsDlb79UfKut9lloPyURejzC4j6gCY1/r
 53YiAa6jfit4aHbI9nVre7tlBxgvDJ6ZyzI6mi0mYuq8hN2eHJ40ZOARIt2jwlD5NADFVSXP4ME
 QEykGFgZY0A8EV12QyiNByMRV7auvf58zM0tN9LR/VRSZEfmL/wFKYf3fIbP2Aj24Er7Lp311
X-Gm-Gg: ASbGncvkaBegsU2caGhXKLqb4QAwi1KduG09n+LYtsokP39/BobYreXliGRnOL/bTjN
 v2aFZd+ldlk6bHr0GdISF8ns+isiB83F2ltB7afYz2JglFkPEkdIW37EDMr2YJLb4GpYyLnZXwo
 mW++H5CFva0WR+v89oGJiUA01EfZZbl8+qsgT6zTsnPJpgpoHCv0ZfMcX6qEnghm4S8RFgnq+Q7
 dRM/QJfkbiPNWleHzy+qadKtZLQXFuuu16HwkrfFlgScjZKI1xWciXlZOBpLIqvRjZr6jQ2nLEv
 yr4KFBJRbJvEuQOM4EUTZkr7l5cf6Ynf3RTc51WgU5+IInied4tSx5gt3szEmQR9PZxUCyMkcbW
 kuWNiU35nyG+Xo6Cl9OudPe2pdfIQraQjxB7LorM=
X-Received: by 2002:a05:600c:3503:b0:43c:e9f7:d6a3 with SMTP id
 5b1f17b1804b1-441ac8e8f3cmr21842285e9.13.1745926264272; 
 Tue, 29 Apr 2025 04:31:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH7IRcI0k5ke/9DoI3DFzAY2GIsJqGIh9CA5L6DqZoGxllNH2gLwweFoubVznf4SdDYzGHmmA==
X-Received: by 2002:a05:600c:3503:b0:43c:e9f7:d6a3 with SMTP id
 5b1f17b1804b1-441ac8e8f3cmr21841935e9.13.1745926263793; 
 Tue, 29 Apr 2025 04:31:03 -0700 (PDT)
Received: from ?IPV6:2003:cb:c73b:fa00:8909:2d07:8909:6a5a?
 (p200300cbc73bfa0089092d0789096a5a.dip0.t-ipconnect.de.
 [2003:cb:c73b:fa00:8909:2d07:8909:6a5a])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-440a538747esm152511205e9.35.2025.04.29.04.31.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 29 Apr 2025 04:31:03 -0700 (PDT)
Message-ID: <45d43b69-23a2-4bb6-ac86-8587dcb67173@redhat.com>
Date: Tue, 29 Apr 2025 13:31:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Shivank Garg <shivankg@amd.com>, Matthew Wilcox <willy@infradead.org>
References: <20250422114000.15003-1-shivankg@amd.com>
 <20250422114000.15003-2-shivankg@amd.com>
 <20250422164111.f5d3f0756ad94d012180ece5@linux-foundation.org>
 <aAg1-hZ0a-44WW6b@casper.infradead.org>
 <b84b6c31-578f-4abe-9b06-6e7cf4882eb3@redhat.com>
 <8f24de4d-5088-498a-968d-9e8bb85201ac@redhat.com>
 <aAmtzAv6ZbbRpKHM@casper.infradead.org>
 <7ff5b149-534d-4bb7-8c6d-3147279d3fae@amd.com>
 <604a1db2-bd64-455e-9cf7-968cacef0122@redhat.com>
 <57536c5a-23dd-4f14-af35-9c5523000e80@amd.com>
Autocrypt: addr=david@redhat.com; keydata=
 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
 WNyWQQ==
Organization: Red Hat
In-Reply-To: <57536c5a-23dd-4f14-af35-9c5523000e80@amd.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: otSCv6KthWAJ-m9AvY8a5YWnnTOSm-ihk-KNUYk9cr8_1745926264
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 29.04.25 12:57, Shivank Garg wrote: > > > On 4/25/2025
 1:17 PM, David Hildenbrand wrote: >> On 24.04.25 13:57, Shivank Garg wrote:
 >>> Hi All, >>> >>> Thank you for reviewing my patch and providing [...] 
 Content analysis details:   (-0.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [170.10.133.124 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [170.10.133.124 listed in bl.score.senderscore.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1u9jBA-0008EE-Qt
Subject: Re: [Jfs-discussion] [PATCH V4 1/2] mm: add
 folio_migration_expected_refs() as inline function
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
From: David Hildenbrand via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: David Hildenbrand <david@redhat.com>
Cc: jane.chu@oracle.com, shaggy@kernel.org, wangkefeng.wang@huawei.com,
 syzbot+8bb6fd945af4e0ad9299@syzkaller.appspotmail.com, apopple@nvidia.com,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, donettom@linux.ibm.com, ziy@nvidia.com,
 Andrew Morton <akpm@linux-foundation.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gMjkuMDQuMjUgMTI6NTcsIFNoaXZhbmsgR2FyZyB3cm90ZToKPiAKPiAKPiBPbiA0LzI1LzIw
MjUgMToxNyBQTSwgRGF2aWQgSGlsZGVuYnJhbmQgd3JvdGU6Cj4+IE9uIDI0LjA0LjI1IDEzOjU3
LCBTaGl2YW5rIEdhcmcgd3JvdGU6Cj4+PiBIaSBBbGwsCj4+Pgo+Pj4gVGhhbmsgeW91IGZvciBy
ZXZpZXdpbmcgbXkgcGF0Y2ggYW5kIHByb3ZpZGluZyBmZWVkYmFjay4KPj4+Cj4+PiBPbiA0LzI0
LzIwMjUgODo0OSBBTSwgTWF0dGhldyBXaWxjb3ggd3JvdGU6Cj4+Pj4gT24gV2VkLCBBcHIgMjMs
IDIwMjUgYXQgMDk6MjU6MDVBTSArMDIwMCwgRGF2aWQgSGlsZGVuYnJhbmQgd3JvdGU6Cj4+Pj4+
IE9uIDIzLjA0LjI1IDA5OjIyLCBEYXZpZCBIaWxkZW5icmFuZCB3cm90ZToKPj4+Pj4+IE9uIDIz
LjA0LjI1IDAyOjM2LCBNYXR0aGV3IFdpbGNveCB3cm90ZToKPj4+Pj4+PiBPbiBUdWUsIEFwciAy
MiwgMjAyNSBhdCAwNDo0MToxMVBNIC0wNzAwLCBBbmRyZXcgTW9ydG9uIHdyb3RlOgo+Pj4+Pj4+
Pj4gKy8qKgo+Pj4+Pj4+Pj4gKyAqIGZvbGlvX21pZ3JhdGVfZXhwZWN0ZWRfcmVmcyAtIENvdW50
IGV4cGVjdGVkIHJlZmVyZW5jZXMgZm9yIGFuIHVubWFwcGVkIGZvbGlvLgo+Pj4+Pj4+Pgo+Pj4+
Pj4+PiAiZm9saW9fbWlncmF0aW9uX2V4cGVjdGVkX3JlZnMiCj4+Pgo+Pj4gVGhhbmsgeW91IGZv
ciBjYXRjaGluZyB0aGlzLCBJJ2xsIGZpeCBpdC4KPj4+Cj4+PiBJIHdhc24ndCBwcmV2aW91c2x5
IGF3YXJlIG9mIHVzaW5nIG1ha2UgVz0xIHRvIGJ1aWxkIGtlcm5lbC1kb2NzIGFuZAo+Pj4gY2hl
Y2sgZm9yIHdhcm5pbmdzIC0gdGhpcyBpcyB2ZXJ5IHVzZWZ1bCBpbmZvcm1hdGlvbiBmb3IgbWUu
Cj4+Pgo+Pj4gSSdsbCBhZGQgdG8gY2hhbmdlbG9nIHRvIGJldHRlciBleHBsYWluIHdoeSB0aGlz
IGlzIG5lZWRlZCBmb3IgSkZTLgo+Pj4KPj4+Pj4+Pgo+Pj4+Pj4+IFdoYXQgSSBkbyB3b25kZXIg
aXMgd2hldGhlciB3ZSB3YW50IHRvIGhhdmUgc3VjaCBhIHNwZWNpYWxpc2VkCj4+Pj4+Pj4gZnVu
Y3Rpb24gZXhpc3RpbmcuwqAgV2UgaGF2ZSBjYW5fc3BsaXRfZm9saW8oKSBpbiBodWdlX21lbW9y
eS5jCj4+Pj4+Pj4gd2hpY2ggaXMgc29tZXdoYXQgbW9yZSBjb21wcmVoZW5zaXZlIGFuZCBkb2Vz
bid0IHJlcXVpcmUgdGhlIGZvbGlvIHRvIGJlCj4+Pj4+Pj4gdW5tYXBwZWQgZmlyc3QuCj4+Pj4+
Pgo+Pj4+Pj4gSSB3YXMgZGViYXRpbmcgd2l0aCBteXNlbGYgd2hldGhlciB3ZSBzaG91bGQgZG8g
dGhlIHVzdWFsICJyZWZzIGZyb20KPj4+Pj4+IC0+cHJpdmF0ZSwgcmVmcyBmcm9tIHBhZ2UgdGFi
bGUgbWFwcGluZ3MiIC4uIGRhbmNlLCBhbmQgbG9vayB1cCB0aGUKPj4+Pj4+IG1hcHBpbmcgZnJv
bSB0aGUgZm9saW8gaW5zdGVhZCBvZiBwYXNzaW5nIGl0IGluLgo+Pj4+Pj4KPj4+Pj4+IEkgY29u
Y2x1ZGVkIHRoYXQgZm9yIHRoaXMgKG1pZ3JhdGlvbikgcHVycG9zZSB0aGUgZnVuY3Rpb24gaXMg
Z29vZAo+Pj4+Pj4gZW5vdWdoIGFzIGl0IGlzOiBpZiBhYnVzZWQgaW4gd3JvbmcgY29udGV4dCAo
ZS5nLiwgc3RpbGwgLT5wcml2YXRlLAo+Pj4+Pj4gc3RpbGwgcGFnZSB0YWJsZSBtYXBwaW5ncyks
IGl0IHdvdWxkIG5vdCBmYWtlIHRoYXQgdGhlcmUgYXJlIG5vCj4+Pj4+PiB1bmV4cGVjdGVkIHJl
ZmVyZW5jZXMuCj4+Pj4+Cj4+Pj4+IFNvcnJ5LCBJIGZvcmdvdCB0aGF0IHdlIHN0aWxsIGNhcmUg
YWJvdXQgdGhlIHJlZmVyZW5jZSBmcm9tIC0+cHJpdmF0ZSBoZXJlLgo+Pj4+PiBXZSBleHBlY3Qg
dGhlIGZvbGlvIHRvIGJlIHVubWFwcGVkLgo+Pj4+Cj4+Pj4gUmlnaHQsIHNvIGp1c3QgYWRkaW5n
IGluIGZvbGlvX21hcGNvdW50KCkgd2lsbCBiZSBhIG5vLW9wIGZvciBtaWdyYXRpb24sCj4+Pj4g
YnV0IGVuYWJsZSBpdHMgcmV1c2UgYnkgY2FuX3NwbGl0X2ZvbGlvKCkuwqAgTWF5YmUuwqAgQW55
d2F5LCB0aGUgd2F5IEkKPj4+PiBleHBsYWluIHBhZ2UgcmVmb2N1bnRzIHRvIHBlb3BsZSAoYW5k
IEkgbmVlZCB0byBwdXQgdGhpcyBpbiBhIGRvY3VtZW50Cj4+Pj4gc29tZXdoZXJlKToKPj4+Pgo+
Pj4+IFRoZXJlIGFyZSB0aHJlZSB0eXBlcyBvZiBjb250cmlidXRpb24gdG8gdGhlIHJlZmNvdW50
Ogo+Pj4+Cj4+Pj4gIMKgIC0gRXhwZWN0ZWQuwqAgVGhlc2UgYXJlIGRlZHVjaWJsZSBmcm9tIHRo
ZSBmb2xpbyBpdHNlbGYsIGFuZCB0aGV5J3JlIGFsbAo+Pj4+ICDCoMKgwqAgZmluZGFibGUuwqAg
WW91IG5lZWQgdG8gZmlndXJlIG91dCB3aGF0IHRoZSBleHBlY3RlZCBudW1iZXIgb2YKPj4+PiAg
wqDCoMKgIHJlZmVyZW5jZXMgYXJlIHRvIGEgZm9saW8gaWYgeW91J3JlIGdvaW5nIHRvIHRyeSB0
byBmcmVlemUgaXQuCj4+Pj4gIMKgwqDCoCBUaGVzZSBjYW4gYmUgcmVmZXJlbmNlcyBmcm9tIHRo
ZSBtYXBjb3VudCwgdGhlIHBhZ2UgY2FjaGUsIHRoZSBzd2FwCj4+Pj4gIMKgwqDCoCBjYWNoZSwg
dGhlIHByaXZhdGUgZGF0YSwgeW91ciBjYWxsIGNoYWluLgo+Pj4+ICDCoCAtIFRlbXBvcmFyeS7C
oCBTb21lb25lIGVsc2UgaGFzIGZvdW5kIHRoZSBmb2xpbyBzb21laG93OyBwZXJoYXBzIHRocm91
Z2gKPj4+PiAgwqDCoMKgIHRoZSBwYWdlIGNhY2hlLCBvciBieSBjYWxsaW5nIEdVUCBvciBzb21l
dGhpbmcuwqAgVGhleSBtZWFuIHlvdSBjYW4ndAo+Pj4+ICDCoMKgwqAgZnJlZXplIHRoZSBmb2xp
byBiZWNhdXNlIHlvdSBkb24ndCBrbm93IHdobyBoYXMgdGhlIHJlZmVyZW5jZSBvciBob3cKPj4+
PiAgwqDCoMKgIGxvbmcgdGhleSBtaWdodCBob2xkIGl0IGZvci4KPj4+PiAgwqAgLSBTcHVyaW91
cy7CoCBUaGlzIGlzIGxpa2UgYSB0ZW1wb3JhcnkgcmVmZXJlbmNlLCBidXQgd29yc2UgYmVjYXVz
ZSBpZgo+Pj4+ICDCoMKgwqAgeW91IHJlYWQgdGhlIGNvZGUsIHRoZXJlIHNob3VsZCBiZSBubyB3
YXkgZm9yIHRoZXJlIHRvIGJlIGFueSB0ZW1wb3JhcnkKPj4+PiAgwqDCoMKgIHJlZmVyZW5jZXMg
dG8gdGhlIGZvbGlvLsKgIFNvbWVvbmUncyBmb3VuZCBhIHN0YWxlIHBvaW50ZXIgdG8gdGhpcwo+
Pj4+ICDCoMKgwqAgZm9saW8gYW5kIGhhcyBidW1wZWQgdGhlIHJlZmVyZW5jZSBjb3VudCB3aGls
ZSB0aGV5IGNoZWNrIHRoYXQgdGhlCj4+Pj4gIMKgwqDCoCBmb2xpbyB0aGV5IGhhdmUgaXMgdGhl
IG9uZSB0aGV5IGV4cGVjdGVkIHRvIGZpbmQuwqAgVGhleSdyZSBnb2luZwo+Pj4+ICDCoMKgwqAg
dG8gZmluZCBvdXQgdGhhdCB0aGUgcG9pbnRlciB0aGV5IGZvbGxvd2VkIGlzIHN0YWxlIGFuZCBw
dXQgdGhlaXIKPj4+PiAgwqDCoMKgIHJlZmNvdW50IHNvb24sIGJ1dCBpbiB0aGUgbWVhbnRpbWUg
eW91IHN0aWxsIGNhbid0IGZyZWV6ZSB0aGUgZm9saW8uCj4+Pj4KPj4+PiBTbyBJIGRvbid0IGxv
dmUgdGhlIGlkZWEgb2YgaGF2aW5nIGEgZnVuY3Rpb24gd2l0aCB0aGUgd29yZCAiZXhwZWN0ZWQi
Cj4+Pj4gaW4gdGhlIG5hbWUgdGhhdCByZXR1cm5zIGEgdmFsdWUgd2hpY2ggZG9lc24ndCB0YWtl
IGludG8gYWNjb3VudCBhbGwKPj4+PiB0aGUgcG90ZW50aWFsIGNvbnRyaWJ1dG9ycyB0byB0aGUg
ZXhwZWN0ZWQgdmFsdWUuwqAgQW5kIHN1cmUgd2UgY2FuIGtlZXAKPj4+PiBhZGRpbmcgcXVhbGlm
aWVycyB0byB0aGUgZnVuY3Rpb24gbmFtZSB0byBpbmRpY2F0ZSBob3cgaXQgaXMgdG8gYmUgdXNl
ZCwKPj4+PiBidXQgYXQgc29tZSBwb2ludCBJIHRoaW5rIHdlIHNob3VsZCBzYXkgIkl0J3MgT0sg
Zm9yIHRoaXMgdG8gYmUgYSBsaXR0bGUKPj4+PiBsZXNzIGVmZmljaWVudCBzbyB3ZSBjYW4gdW5k
ZXJzdGFuZCB3aGF0IGl0IG1lYW5zIi4KPj4+Cj4+PiBUaGFuayB5b3UsIFdpbGx5LCBmb3IgdGhl
IGRldGFpbGVkIGV4cGxhbmF0aW9uIGFib3V0IHBhZ2UgcmVmZXJlbmNlIGNvdW50aW5nLgo+Pj4g
VGhpcyBoYXMgaGVscGVkIG1lIHVuZGVyc3RhbmQgdGhlIGNvbmNlcHQgbXVjaCBiZXR0ZXIuCj4+
Pgo+Pj4gQmFzZWQgb24geW91ciBleHBsYW5hdGlvbiBhbmQgdGhlIGRpc2N1c3Npb24sIEknbSBz
dW1tYXJpemluZyB0aGUgMiBhcHByb2FjaGVzOgo+Pj4KPj4+IDEuIFJlbmFtZSBmb2xpb19taWdy
YXRpb25fZXhwZWN0ZWRfcmVmcyB0byBmb2xpb19taWdyYXRpb25fZXhwZWN0ZWRfYmFzZV9yZWZz
LCB0bwo+Pj4gdG8gY2xhcmlmeSBpdCBkb2VzIG5vdCBhY2NvdW50IGZvciBvdGhlciBwb3RlbnRp
YWwgY29udHJpYnV0b3JzLgo+Pj4gb3IgZm9saW9fdW5tYXBwZWRfYmFzZV9yZWZzPwo+Pj4gMi4g
QWNjb3VudGluZyBhbGwgcG9zc2libGUgY29udHJpYnV0b3JzIHRvIGV4cGVjdGVkIHJlZnM6Cj4+
PiBmb2xpb19leHBlY3RlZF9yZWZzKG1hcHBpbmcsIGZvbGlvKQo+Pj4gewo+Pj4gIMKgwqDCoMKg
aW50IHJlZnMgPSAxOwo+Pj4KPj4+ICDCoMKgwqDCoGlmIChtYXBwaW5nKSB7Cj4+PiAgwqDCoMKg
wqDCoMKgwqAgaWYgKGZvbGlvX3Rlc3RfYW5vbihmb2xpbykpCj4+PiAgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCByZWZzICs9IGZvbGlvX3Rlc3Rfc3dhcGNhY2hlKGZvbGlvKSA/Cj4+PiAgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGZvbGlvX25yX3BhZ2VzKGZvbGlvKSA6IDA7Cj4+PiAg
wqDCoMKgwqDCoMKgwqAgZWxzZQo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVmcyArPSBm
b2xpb19ucl9wYWdlcyhmb2xpbyk7Cj4+Pgo+Pj4gIMKgwqDCoMKgwqDCoMKgIGlmIChmb2xpb190
ZXN0X3ByaXZhdGUoZm9saW8pKQo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVmcysrOwo+
Pj4gIMKgwqDCoMKgfQo+Pj4gIMKgwqDCoMKgcmVmcyArPSBmb2xpb19tYXBjb3VudChmb2xpbyk7
IC8vIHRha2VzIG1hcHBlZCBmb2xpbyBpbnRvIGFjY291bnQgYW5kIGV2YWx1YXRlIGFzIG5vLW9w
IGZvciB1bm1hcHBlZCBmb2xpb3MgZHVyaW5nIG1pZ3JhdGlvbgo+Pj4gIMKgwqDCoMKgcmV0dXJu
IHJlZnM7Cj4+PiB9Cj4+Pgo+Pj4gUGxlYXNlIGxldCBtZSBrbm93IGlmIHRoaXMgYXBwcm9hY2gg
aXMgYWNjZXB0YWJsZSBvciBpZiB5b3UgaGF2ZQo+Pj4gb3RoZXIgc3VnZ2VzdGlvbnMgZm9yIGlt
cHJvdmVtZW50Lgo+Pgo+PiBBIGNvdXBsZSBvZiBwb2ludHM6Cj4+Cj4+IDEpIENhbiB3ZSBuYW1l
IGl0IGZvbGlvX2V4cGVjdGVkX3JlZl9jb3VudCgpCj4+Cj4+IDIpIENhbiB3ZSBhdm9pZCBwYXNz
aW5nIGluIHRoZSBtYXBwaW5nPyBNaWdodCBub3QgYmUgZXhwZW5zaXZlIHRvIGxvb2sgaXQKPj4g
IMKgwqAgdXAgYWdhaW4uIEJlbG93IEkgYXZvaWQgY2FsbGluZyBmb2xpb19tYXBwaW5nKCkuCj4+
Cj4+IDMpIENhbiB3ZSBkZWxlZ2F0ZSBhZGRpbmcgdGhlIGFkZGl0aW9uYWwgcmVmZXJlbmNlIHRv
IHRoZSBjYWxsZXI/IFdpbGwgbWFrZSBpdAo+PiAgwqDCoCBlYXNpZXIgdG8gdXNlIGVsc2V3aGVy
ZSAoZS5nLiwgbm90IGFkZGl0aW9uYWwgcmVmZXJlbmNlIGJlY2F1c2Ugd2UgYXJlIGhvbGRpbmcK
Pj4gIMKgwqAgdGhlIHBhZ2UgdGFibGUgbG9jaykuCj4+Cj4+IDQpIENhbiB3ZSBhZGQga2VybmVs
ZG9jLCBhbmQgaW4gcGFydGljdWxhciBkb2N1bWVudCB0aGUgc2VtYW50aWNzPwo+Pgo+PiBOb3Qg
c3VyZSBpZiB3ZSBzaG91bGQgaW5saW5lIHRoaXMgZnVuY3Rpb24gb3IgcHV0IGl0IGludG8gbW0v
dXRpbHMuYwo+Pgo+IAo+IEhpIERhdmlkLAo+IAo+IFRoYW5rIHlvdSBmb3IgdGhlIGRldGFpbGVk
IHN1Z2dlc3Rpb25zLiBUaGV5IGFsbCBtYWtlIHNlbnNlIHRvIG1lLgo+IAo+IEkgZGlkIG5vdCB1
bmRlcnN0YW5kIGEgZmV3IGNoYW5nZXMgaW4geW91ciBwYXRjaCBiZWxvdzoKPj4KPj4gSSdtIHRo
aW5raW5nIG9mIHNvbWV0aGluZyBsaWtlIChjb21wbGV0ZWx5IHVudGVzdGVkKToKPj4KPj4gICAK
Pj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvbW0uaCBiL2luY2x1ZGUvbGludXgvbW0uaAo+
PiBpbmRleCBhMjA1MDIwZTJhNThiLi5hMGFkNGVkOWE3NWZmIDEwMDY0NAo+PiAtLS0gYS9pbmNs
dWRlL2xpbnV4L21tLmgKPj4gKysrIGIvaW5jbHVkZS9saW51eC9tbS5oCj4+IEBAIC0yMTEyLDYg
KzIxMTIsNjEgQEAgc3RhdGljIGlubGluZSBib29sIGZvbGlvX21heWJlX21hcHBlZF9zaGFyZWQo
c3RydWN0IGZvbGlvICpmb2xpbykKPj4gIMKgwqDCoMKgIHJldHVybiBmb2xpb190ZXN0X2xhcmdl
X21heWJlX21hcHBlZF9zaGFyZWQoZm9saW8pOwo+PiAgwqB9Cj4+ICAgCj4+ICsvKioKPj4gKyAq
IGZvbGlvX2V4cGVjdGVkX3JlZl9jb3VudCAtIGNhbGN1bGF0ZSB0aGUgZXhwZWN0ZWQgZm9saW8g
cmVmY291bnQKPj4gKyAqIEBmb2xpbzogdGhlIGZvbGlvCj4+ICsgKgo+PiArICogQ2FsY3VsYXRl
IHRoZSBleHBlY3RlZCBmb2xpbyByZWZjb3VudCwgdGFraW5nIHJlZmVyZW5jZXMgZnJvbSB0aGUg
cGFnZWNhY2hlLAo+PiArICogc3dhcGNhY2hlLCBQR19wcml2YXRlIGFuZCBwYWdlIHRhYmxlIG1h
cHBpbmdzIGludG8gYWNjb3VudC4gVXNlZnVsIGluCj4+ICsgKiBjb21iaW5hdGlvbiB3aXRoIGZv
bGlvX3JlZl9jb3VudCgpIHRvIGRldGVjdCB1bmV4cGVjdGVkIHJlZmVyZW5jZXMgKGUuZy4sCj4+
ICsgKiBHVVAgb3Igb3RoZXIgdGVtcG9yYXJ5IHJlZmVyZW5jZXMpLgo+PiArICoKPj4gKyAqIERv
ZXMgY3VycmVudGx5IG5vdCBjb25zaWRlciByZWZlcmVuY2VzIGZyb20gdGhlIExSVSBjYWNoZS4g
SWYgdGhlIGZvbGlvCj4+ICsgKiB3YXMgaXNvbGF0ZWQgZnJvbSB0aGUgTFJVICh3aGljaCBpcyB0
aGUgY2FzZSBkdXJpbmcgbWlncmF0aW9uIG9yIHNwbGl0KSwKPj4gKyAqIHRoZSBmb2xpbyB3YXMg
YWxyZWFkeSBpc29sYXRlZCBmcm9tIHRoZSBMUlUgYW5kIHRoZSBMUlUgY2FjaGUgZG9lcyBub3Qg
YXBwbHkuCj4+ICsgKgo+PiArICogQ2FsbGluZyB0aGlzIGZ1bmN0aW9uIG9uIGFuIHVubWFwcGVk
IGZvbGlvIC0tICFmb2xpb19tYXBwZWQoKSAtLSB0aGF0IGlzCj4+ICsgKiBsb2NrZWQgd2lsbCBy
ZXR1cm4gYSBzdGFibGUgcmVzdWx0Lgo+PiArICoKPj4gKyAqIENhbGxpbmcgdGhpcyBmdW5jdGlv
biBvbiBhIG1hcHBlZCBmb2xpbyB3aWxsIG5vdCByZXN1bHQgaW4gYSBzdGFibGUgcmVzdWx0LAo+
PiArICogYmVjYXVzZSBub3RoaW5nIHN0b3BzIGFkZGl0aW9uYWwgcGFnZSB0YWJsZSBtYXBwaW5n
cyBmcm9tIGNvbWluZyAoZS5nLiwKPj4gKyAqIGZvcmsoKSkgb3IgZ29pbmcgKGUuZy4sIG11bm1h
cCgpKS4KPj4gKyAqCj4+ICsgKiBDYWxsaW5nIHRoaXMgZnVuY3Rpb24gd2l0aG91dCB0aGUgZm9s
aW8gbG9jayB3aWxsIGFsc28gbm90IHJlc3VsdCBpbiBhCj4+ICsgKiBzdGFibGUgcmVzdWx0OiBm
b3IgZXhhbXBsZSwgdGhlIGZvbGlvIG1pZ2h0IGdldCBkcm9wcGVkIGZyb20gdGhlIHN3YXBjYWNo
ZQo+PiArICogY29uY3VycmVudGx5Lgo+PiArICoKPj4gKyAqIEhvd2V2ZXIsIGV2ZW4gd2hlbiBj
YWxsZWQgd2l0aG91dCB0aGUgZm9saW8gbG9jayBvciBvbiBhIG1hcHBlZCBmb2xpbywKPj4gKyAq
IHRoaXMgZnVuY3Rpb24gY2FuIGJlIHVzZWQgdG8gZGV0ZWN0IHVuZXhwZWN0ZWQgcmVmZXJlbmNl
cyBlYXJseSAoZm9yIGV4YW1wbGUuCj4+ICsgKiBpZiBpdCBtYWtlcyBzZW5zZSB0byBldmVuIGxv
Y2sgdGhlIGZvbGlvIGFuZCB1bm1hcCBpdCkuCj4+ICsgKgo+PiArICogVGhlIGNhbGxlciBtdXN0
IGFkZCBhbnkgcmVmZXJlbmNlIChlLmcuLCBmcm9tIGZvbGlvX3RyeV9nZXQoKSkgaXQgbWlnaHQg
YmUKPj4gKyAqIGhvbGRpbmcgaXRzZWxmIHRvIHRoZSByZXN1bHQuCj4+ICsgKgo+PiArICogUmV0
dXJucyB0aGUgZXhwZWN0ZWQgZm9saW8gcmVmY291bnQuCj4+ICsgKi8KPj4gK3N0YXRpYyBpbmxp
bmUgaW50IGZvbGlvX2V4cGVjdGVkX3JlZl9jb3VudChjb25zdCBzdHJ1Y3QgZm9saW8gKmZvbGlv
KQo+PiArewo+PiArwqDCoMKgIGNvbnN0IGludCBvcmRlciA9IGZvbGlvX29yZGVyKGZvbGlvKTsK
Pj4gK8KgwqDCoCBpbnQgcmVmX2NvdW50ID0gMDsKPiAKPiBXaHkgYXJlIHdlIG5vdCB0YWtpbmcg
YmFzZSByZWZfY291bnQgYXMgMSBsaWtlIGl0J3MgZG9uZSBpbiBvcmlnaW5hbCBmb2xpb19leHBl
Y3RlZF9yZWZzCj4gaW1wbGVtZW50YXRpb24/CgpUaGUgaWRlYSBpcyB0aGF0IHRoaXMgaXMgdGhl
IHJlc3BvbnNpYmlsaXR5IG9mIHRoZSBjYWxsZXIsIHdoaWNoIHdpbGwgCm1ha2UgdGhpcyBmdW5j
dGlvbiBtb3JlIHZlcnNhdGlsZS4KCkZvciBleGFtcGxlLCB3aGVuIHdlJ3JlIGhvbGRpbmcgdGhl
IHBhZ2UgdGFibGUgbG9jayBhbmQgd2FudCB0byBjaGVjayAKZm9yIHVuZXhwZWN0ZWQgcmVmZXJl
bmNlcywgd2Ugd291bGRuJ3QgYmUgaG9sZGluZyBhbnkgYWRkaXRpb25hbCAKcmVmZXJlbmNlIGZy
b20gYSBmb2xpb190cnlfZ2V0KCkgbGlrZSBtaWdyYXRpb24gY29kZSB3b3VsZC4KCj4gCj4+ICsK
Pj4gK8KgwqDCoCBpZiAoV0FSTl9PTl9PTkNFKGZvbGlvX3Rlc3Rfc2xhYihmb2xpbykpKQo+PiAr
wqDCoMKgwqDCoMKgwqAgcmV0dXJuIDA7Cj4+ICsKPj4gK8KgwqDCoCBpZiAoZm9saW9fdGVzdF9h
bm9uKGZvbGlvKSkgewo+PiArwqDCoMKgwqDCoMKgwqAgLyogT25lIHJlZmVyZW5jZSBwZXIgcGFn
ZSBmcm9tIHRoZSBzd2FwY2FjaGUuICovCj4+ICvCoMKgwqDCoMKgwqDCoCByZWZfY291bnQgKz0g
Zm9saW9fdGVzdF9zd2FwY2FjaGUoZm9saW8pIDw8IG9yZGVyOwo+IAo+IHdoeSBub3QgdXNlIGZv
bGlvX25yX3BhZ2VzKCkgaGVyZSBpbnN0ZWFkIDEgPDwgb3JkZXI/Cj4gc29tZXRoaW5nIGxpa2Ug
Zm9saW9fdGVzdF9zd2FwY2FjaGUoZm9saW8pICogZm9saW9fbnJfcGFnZXMoZm9saW8pLgoKQSBz
aGlmdCBpcyB0eXBpY2FsbHkgY2hlYXBlciB0aGFuIGEgbXVsdGlwbGljYXRpb24sIHNvIGl0IGxv
b2tlZCBsaWtlIGEgCmxvdyBoYW5naW5nIGZydWl0IHRvIHVzZSBhIHNoaWZ0IGhlcmUuCgo+IAo+
PiArwqDCoMKgIH0gZWxzZSBpZiAoISgodW5zaWduZWQgbG9uZylmb2xpby0+bWFwcGluZyAmIFBB
R0VfTUFQUElOR19GTEFHUykpIHsKPj4gK8KgwqDCoMKgwqDCoMKgIC8qIE9uZSByZWZlcmVuY2Ug
cGVyIHBhZ2UgZnJvbSB0aGUgcGFnZWNhY2hlLiAqLwo+PiArwqDCoMKgwqDCoMKgwqAgcmVmX2Nv
dW50ICs9ICEhZm9saW8tPm1hcHBpbmcgPDwgb3JkZXI7Cj4+ICvCoMKgwqDCoMKgwqDCoCAvKiBP
bmUgcmVmZXJlbmNlIGZyb20gUEdfcHJpdmF0ZS4gKi8KPj4gK8KgwqDCoMKgwqDCoMKgIHJlZl9j
b3VudCArPSBmb2xpb190ZXN0X3ByaXZhdGUoZm9saW8pOwo+PiArwqDCoMKgIH0KPj4gKwo+PiAr
wqDCoMKgIC8qIE9uZSByZWZlcmVuY2UgcGVyIHBhZ2UgdGFibGUgbWFwcGluZy4gKi8KPj4gK8Kg
wqDCoCByZXR1cm4gcmVmX2NvdW50ICsgZm9saW9fbWFwY291bnQoZm9saW8pOzsKPiAKPj4gK30K
Pj4gKwo+PiAgwqAjaWZuZGVmIEhBVkVfQVJDSF9NQUtFX0ZPTElPX0FDQ0VTU0lCTEUKPj4gIMKg
c3RhdGljIGlubGluZSBpbnQgYXJjaF9tYWtlX2ZvbGlvX2FjY2Vzc2libGUoc3RydWN0IGZvbGlv
ICpmb2xpbykKPj4gIMKgewo+IAo+IEkgdGVzdGVkIHlvdXIgcGF0Y2ggd2l0aCBzdHJlc3Mtbmcg
YW5kIG15IG1vdmUtcGFnZXMgdGVzdCBjb2RlLiBJIGRpZCBub3Qgc2VlCj4gYW55IGJ1Z3MvZXJy
b3JzLgoKCkNvb2whIEl0IHdvdWxkIGJlIGdvb2QgdG8gZ2V0IHNvbWUgZmVlZGJhY2sgZnJvbSBX
aWxseSBvbiB0aGUga2VybmVsZG9jLCAKaWYgaGUncyBhd2FyZSBvZiBvdGhlciBjb25zdHJhaW50
cyBldGMuCgoKLS0gCkNoZWVycywKCkRhdmlkIC8gZGhpbGRlbmIKCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSmZzLWRpc2N1c3Npb24gbWFpbGluZyBs
aXN0Ckpmcy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNv
dXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9qZnMtZGlzY3Vzc2lvbgo=
