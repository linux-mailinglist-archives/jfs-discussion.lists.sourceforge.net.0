Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C181AB2A058
	for <lists+jfs-discussion@lfdr.de>; Mon, 18 Aug 2025 13:29:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:References:To:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=T6GK0eYgV8dx7KygGs3eL2Jk/WFvnu+rjUKgLuwoi90=; b=QQ3QemuS7bv2WrfbjUcptSa3l2
	qDwJcpI8dJy+wVow4N+3tS3NQSzy+hoGQgxXvyINmL+nWSoQTNbmDQlFnDf1mxlq//kjGvNkS8YuD
	MWvZYvYBrIFH6asHcUQmwJ8hk6bVLMEEyBvxuXRg3zxYDAtzr6lLGtotzEd/yC3akot4=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uny2c-0006Kq-B3;
	Mon, 18 Aug 2025 11:28:43 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <david@redhat.com>) id 1uny2a-0006Kc-W0
 for jfs-discussion@lists.sourceforge.net;
 Mon, 18 Aug 2025 11:28:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=J0poHkf7IJxzNGcjiPzQE+7iEkpA1901ZpOaMVbBkbk=; b=aCKP6ocxYb7m6kR0AW61xkQJzD
 Q+ZiFV0/6TAA/X1SmSdbqq48Qxjz4s90ZnNZXG3mUlpsoXBQwSaK5LENAK+EnC5uJDDtZE8etpYP3
 KPnWyT6zGYe6S+pxao8HkRCuld5n97igHkNMZ8cBR4eB51Ce+zbRH1qXmt8vUSfsqU9M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=J0poHkf7IJxzNGcjiPzQE+7iEkpA1901ZpOaMVbBkbk=; b=KL1Qi5FbEIlISe1QSY7FlA3RDP
 B+j7obT3nWZBk+J+yGjoCqp0hRHjw248VZZCWF7XJv+pZZq1DL3GR9CxSvDPPin1qUEPDGG8k3ODp
 doA5RgFt7q9la8w4aBVyGyzA+GtofXNKcljigw8IMop1qFCD5LI4oPGIZSR4Y6YI5gq0=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uny2b-0005vz-8m for jfs-discussion@lists.sourceforge.net;
 Mon, 18 Aug 2025 11:28:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1755516510;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=J0poHkf7IJxzNGcjiPzQE+7iEkpA1901ZpOaMVbBkbk=;
 b=Q6koBtmppzn3sGfIChKcwSO+WPwe/jzs0ZRHgdYJ7SRejDS5eyig1NQoR3BZnkYk5M9CKu
 N3dfmZ5FTLSextRTWdXbcmqFJQYCYQPefqqeQA67iz6lg1e1Y6f9zMDxUyvp08OisyEFzY
 Rfv1zksA/1+McDf1BxZE1MjUn+yPf4I=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-218-_tlO1E1aNwaMJN1xwVvsJw-1; Mon, 18 Aug 2025 07:28:27 -0400
X-MC-Unique: _tlO1E1aNwaMJN1xwVvsJw-1
X-Mimecast-MFC-AGG-ID: _tlO1E1aNwaMJN1xwVvsJw_1755516506
Received: by mail-wr1-f69.google.com with SMTP id
 ffacd0b85a97d-3b9dc566cb4so2065163f8f.1
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 18 Aug 2025 04:28:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755516506; x=1756121306;
 h=content-transfer-encoding:in-reply-to:autocrypt:content-language
 :from:references:cc:to:subject:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=J0poHkf7IJxzNGcjiPzQE+7iEkpA1901ZpOaMVbBkbk=;
 b=SdQrDFrOY0jzkLupZWlEW0JVDU1IiOPb4ds3ASBlkeO9quGTPPUwhFAQKutW5SFsJz
 KPnmkpe5Sk0uyk30+sAae9pWr70NTyCDv9LZF2DI3Jo+zoVn8HDbXsg9sCJA0bfHe221
 27Rlj0IdTsSka+S5tKJc4AKNu1dbjIbQeHbSqWpdBN4s3WUvo6i64Ivc+J3FS8dqXwn2
 eNP2RrG79wwFNRQxLABecloSj5Lnq8ymJEULuz+/NrhreawS9kQX7kUYPjgUGqDIVcIy
 eJcA+B47woSRlaa82sqM7lkVGFKGQZ3m3Nf53/Bio0fjdSq2jt/iClfQ+cX7k70rPW0V
 b2sg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXgWWmj9sQX34crSqeHkl+Iv/LX8cuLu3AIk8jv1aBbzYgDPJP8G82ksa564tUcAmvlRgNb/h22wDhasGqmUg==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzdXfvCFn7/cUQfuv/ITj4ciW1/g8pDmak8Yad2mje18CoWXJXt
 MGRScWEQCYhyVUgED/HiYB9DYX8TsvL9twUYr1PiuB48fR3p6QFyQDAkZRYGUzixh4t0sp2kIzx
 UdvoOEkXMb0NjVt5qQW8Bx6CVUNYwrkBhU/KlMV+IqY0Usn7Ym6Yxe9nzK3B1uaUUeNS5IJtf83
 /j
X-Gm-Gg: ASbGncuGYMTqwOdvQEXIvvkBj4ZhN/6SPLdcPlG0LrNTMhbsYsGCO2Gbrv6PThkwYc2
 t42CH3LPPDueK1dVQaFbNc5FeKPXAKvgkqVIfHgjgvYvuX/QJH+C9vw+JANC0HEGtP0jMPOWU9x
 il9RkkQpZspi2fj/RYFlhyjIf3zuQ2LLAUmRc+BPbrpDEoS4sxrWh9GTSh6tRZWMvSF/r2iklEF
 KM6V0ps1tEPmdzKlUHA1v7B2TAzLXZiuC4kejkzbXnhuViWKR43+0gIJLo89nPqCwZ7+xYOj3X6
 vOL6wMgYjFtm0niEyyucjqsXdXqSUWCkIAQ2MBIlbWxhlB7XTnfS1VjO87xPy117PagvxA==
X-Received: by 2002:a05:6000:2301:b0:3bb:2fb3:9c7e with SMTP id
 ffacd0b85a97d-3bb674db9eemr9706746f8f.21.1755516505919; 
 Mon, 18 Aug 2025 04:28:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFoJ2j4tybVSbT2mQ2UN8mZP25LV2c4F54aus7k4qiE296Q/C3YEoCeE99f3tiBsFkHDADQDg==
X-Received: by 2002:a05:6000:2301:b0:3bb:2fb3:9c7e with SMTP id
 ffacd0b85a97d-3bb674db9eemr9706715f8f.21.1755516505387; 
 Mon, 18 Aug 2025 04:28:25 -0700 (PDT)
Received: from [192.168.3.141] (p57a1a246.dip0.t-ipconnect.de. [87.161.162.70])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-45a22211395sm129258685e9.4.2025.08.18.04.28.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 18 Aug 2025 04:28:24 -0700 (PDT)
Message-ID: <3bb725f8-28d7-4aa2-b75f-af40d5cab280@redhat.com>
Date: Mon, 18 Aug 2025 13:28:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Lance Yang <lance.yang@linux.dev>
References: <20250811143949.1117439-1-david@redhat.com>
 <20250811143949.1117439-2-david@redhat.com>
 <CABzRoyYU2yOuGQskCAG_gzKiQwR6uM9eAYqOOCoQj+Xv=r163A@mail.gmail.com>
Autocrypt: addr=david@redhat.com; keydata=
 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
 qIws/H2t
In-Reply-To: <CABzRoyYU2yOuGQskCAG_gzKiQwR6uM9eAYqOOCoQj+Xv=r163A@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: jLlB6_8I9JFOqzwumcnbhw9Q_YNV7cApKyMnToecI24_1755516506
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 13.08.25 07:05, Lance Yang wrote: > On Mon, Aug 11, 2025
 at 10:47 PM David Hildenbrand <david@redhat.com> wrote: >> > [...] >> +++
 b/mm/migrate.c >> @@ -1176,16 +1176,6 @@ static int migrate_folio_ [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1uny2b-0005vz-8m
Subject: Re: [Jfs-discussion] [PATCH v1 1/2] mm/migrate: remove
 MIGRATEPAGE_UNMAP
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
Cc: linux-aio@kvack.org, jfs-discussion@lists.sourceforge.net,
 Jan Kara <jack@suse.cz>, "Michael S. Tsirkin" <mst@redhat.com>,
 Jason Wang <jasowang@redhat.com>, linux-mm@kvack.org,
 Ying Huang <ying.huang@linux.alibaba.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Xuan Zhuo <xuanzhuo@linux.alibaba.com>,
 Madhavan Srinivasan <maddy@linux.ibm.com>, Rakie Kim <rakie.kim@sk.com>,
 Sergey Senozhatsky <senozhatsky@chromium.org>,
 Michael Ellerman <mpe@ellerman.id.au>, Alistair Popple <apopple@nvidia.com>,
 Christophe Leroy <christophe.leroy@csgroup.eu>,
 =?UTF-8?Q?Eugenio_P=C3=A9rez?= <eperezma@redhat.com>, Zi Yan <ziy@nvidia.com>,
 Josef Bacik <josef@toxicpanda.com>, Gregory Price <gourry@gourry.net>,
 Byungchul Park <byungchul@sk.com>, Arnd Bergmann <arnd@arndb.de>,
 Dave Kleikamp <shaggy@kernel.org>, virtualization@lists.linux.dev,
 Nicholas Piggin <npiggin@gmail.com>,
 Jerrin Shaji George <jerrin.shaji-george@broadcom.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, David Sterba <dsterba@suse.com>,
 Oscar Salvador <osalvador@suse.de>, Joshua Hahn <joshua.hahnjy@gmail.com>,
 Christian Brauner <brauner@kernel.org>, Chris Mason <clm@fb.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Muchun Song <muchun.song@linux.dev>, linux-kernel@vger.kernel.org,
 Minchan Kim <minchan@kernel.org>, Benjamin LaHaise <bcrl@kvack.org>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org, linux-btrfs@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gMTMuMDguMjUgMDc6MDUsIExhbmNlIFlhbmcgd3JvdGU6Cj4gT24gTW9uLCBBdWcgMTEsIDIw
MjUgYXQgMTA6NDfigK9QTSBEYXZpZCBIaWxkZW5icmFuZCA8ZGF2aWRAcmVkaGF0LmNvbT4gd3Jv
dGU6Cj4+Cj4gWy4uLl0KPj4gKysrIGIvbW0vbWlncmF0ZS5jCj4+IEBAIC0xMTc2LDE2ICsxMTc2
LDYgQEAgc3RhdGljIGludCBtaWdyYXRlX2ZvbGlvX3VubWFwKG5ld19mb2xpb190IGdldF9uZXdf
Zm9saW8sCj4+ICAgICAgICAgIGJvb2wgbG9ja2VkID0gZmFsc2U7Cj4+ICAgICAgICAgIGJvb2wg
ZHN0X2xvY2tlZCA9IGZhbHNlOwo+Pgo+PiAtICAgICAgIGlmIChmb2xpb19yZWZfY291bnQoc3Jj
KSA9PSAxKSB7Cj4+IC0gICAgICAgICAgICAgICAvKiBGb2xpbyB3YXMgZnJlZWQgZnJvbSB1bmRl
ciB1cy4gU28gd2UgYXJlIGRvbmUuICovCj4+IC0gICAgICAgICAgICAgICBmb2xpb19jbGVhcl9h
Y3RpdmUoc3JjKTsKPj4gLSAgICAgICAgICAgICAgIGZvbGlvX2NsZWFyX3VuZXZpY3RhYmxlKHNy
Yyk7Cj4+IC0gICAgICAgICAgICAgICAvKiBmcmVlX3BhZ2VzX3ByZXBhcmUoKSB3aWxsIGNsZWFy
IFBHX2lzb2xhdGVkLiAqLwo+PiAtICAgICAgICAgICAgICAgbGlzdF9kZWwoJnNyYy0+bHJ1KTsK
Pj4gLSAgICAgICAgICAgICAgIG1pZ3JhdGVfZm9saW9fZG9uZShzcmMsIHJlYXNvbik7Cj4+IC0g
ICAgICAgICAgICAgICByZXR1cm4gTUlHUkFURVBBR0VfU1VDQ0VTUzsKPj4gLSAgICAgICB9Cj4+
IC0KPj4gICAgICAgICAgZHN0ID0gZ2V0X25ld19mb2xpbyhzcmMsIHByaXZhdGUpOwo+PiAgICAg
ICAgICBpZiAoIWRzdCkKPj4gICAgICAgICAgICAgICAgICByZXR1cm4gLUVOT01FTTsKPj4gQEAg
LTEyNzUsNyArMTI2NSw3IEBAIHN0YXRpYyBpbnQgbWlncmF0ZV9mb2xpb191bm1hcChuZXdfZm9s
aW9fdCBnZXRfbmV3X2ZvbGlvLAo+Pgo+PiAgICAgICAgICBpZiAodW5saWtlbHkocGFnZV9oYXNf
bW92YWJsZV9vcHMoJnNyYy0+cGFnZSkpKSB7Cj4+ICAgICAgICAgICAgICAgICAgX19taWdyYXRl
X2ZvbGlvX3JlY29yZChkc3QsIG9sZF9wYWdlX3N0YXRlLCBhbm9uX3ZtYSk7Cj4+IC0gICAgICAg
ICAgICAgICByZXR1cm4gTUlHUkFURVBBR0VfVU5NQVA7Cj4+ICsgICAgICAgICAgICAgICByZXR1
cm4gMDsKPj4gICAgICAgICAgfQo+Pgo+PiAgICAgICAgICAvKgo+PiBAQCAtMTMwNSw3ICsxMjk1
LDcgQEAgc3RhdGljIGludCBtaWdyYXRlX2ZvbGlvX3VubWFwKG5ld19mb2xpb190IGdldF9uZXdf
Zm9saW8sCj4+Cj4+ICAgICAgICAgIGlmICghZm9saW9fbWFwcGVkKHNyYykpIHsKPj4gICAgICAg
ICAgICAgICAgICBfX21pZ3JhdGVfZm9saW9fcmVjb3JkKGRzdCwgb2xkX3BhZ2Vfc3RhdGUsIGFu
b25fdm1hKTsKPj4gLSAgICAgICAgICAgICAgIHJldHVybiBNSUdSQVRFUEFHRV9VTk1BUDsKPj4g
KyAgICAgICAgICAgICAgIHJldHVybiAwOwo+PiAgICAgICAgICB9Cj4+Cj4+ICAgb3V0Ogo+PiBA
QCAtMTg0OCwxNCArMTgzOCwyOCBAQCBzdGF0aWMgaW50IG1pZ3JhdGVfcGFnZXNfYmF0Y2goc3Ry
dWN0IGxpc3RfaGVhZCAqZnJvbSwKPj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
Y29udGludWU7Cj4+ICAgICAgICAgICAgICAgICAgICAgICAgICB9Cj4+Cj4+ICsgICAgICAgICAg
ICAgICAgICAgICAgIC8qCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAqIElmIHdlIGFyZSBo
b2xkaW5nIHRoZSBsYXN0IGZvbGlvIHJlZmVyZW5jZSwgdGhlIGZvbGlvCj4+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAqIHdhcyBmcmVlZCBmcm9tIHVuZGVyIHVzLCBzbyBqdXN0IGRyb3Agb3Vy
IHJlZmVyZW5jZS4KPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICovCj4+ICsgICAgICAgICAg
ICAgICAgICAgICAgIGlmIChsaWtlbHkoIXBhZ2VfaGFzX21vdmFibGVfb3BzKCZmb2xpby0+cGFn
ZSkpICYmCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICBmb2xpb19yZWZfY291bnQoZm9s
aW8pID09IDEpIHsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBmb2xpb19jbGVh
cl9hY3RpdmUoZm9saW8pOwo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGZvbGlv
X2NsZWFyX3VuZXZpY3RhYmxlKGZvbGlvKTsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBsaXN0X2RlbCgmZm9saW8tPmxydSk7Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgbWlncmF0ZV9mb2xpb19kb25lKGZvbGlvLCByZWFzb24pOwo+PiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHN0YXRzLT5ucl9zdWNjZWVkZWQgKz0gbnJfcGFnZXM7Cj4+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RhdHMtPm5yX3RocF9zdWNjZWVkZWQgKz0g
aXNfdGhwOwo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnRpbnVlOwo+PiAr
ICAgICAgICAgICAgICAgICAgICAgICB9Cj4+ICsKPiAKPiBJdCBzZWVtcyB0aGUgcmVhc29uIHBh
cmFtZXRlciBpcyBubyBsb25nZXIgdXNlZCB3aXRoaW4gbWlncmF0ZV9mb2xpb191bm1hcCgpCj4g
YWZ0ZXIgdGhpcyBwYXRjaC4KPiAKPiBQZXJoYXBzIGl0IGNvdWxkIGJlIHJlbW92ZWQgZnJvbSB0
aGUgZnVuY3Rpb24ncyBzaWduYXR1cmUgOykKClRoYW5rcywgd2VsbCBzcG90dGVkLCBAQW5kcmV3
IGNhbiB5b3Ugc3F1YXNoIHRoZSBmb2xsb3dpbmc/CgoKIEZyb20gNDA5MzhiYjBkZTIwZTAzMjUw
YzgxM2Q1YWJjNzI4NmFlYTY5ZDgzNSBNb24gU2VwIDE3IDAwOjAwOjAwIDIwMDEKRnJvbTogRGF2
aWQgSGlsZGVuYnJhbmQgPGRhdmlkQHJlZGhhdC5jb20+CkRhdGU6IE1vbiwgMTggQXVnIDIwMjUg
MTM6MjY6MDUgKzAyMDAKU3ViamVjdDogW1BBVENIXSBmaXh1cDogbW0vbWlncmF0ZTogcmVtb3Zl
IE1JR1JBVEVQQUdFX1VOTUFQCgpObyBuZWVkIHRvIHBhc3MgInJlYXNvbiIgdG8gbWlncmF0ZV9m
b2xpb191bm1hcCgpLgoKU2lnbmVkLW9mZi1ieTogRGF2aWQgSGlsZGVuYnJhbmQgPGRhdmlkQHJl
ZGhhdC5jb20+Ci0tLQogIG1tL21pZ3JhdGUuYyB8IDUgKystLS0KICAxIGZpbGUgY2hhbmdlZCwg
MiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL21tL21pZ3JhdGUu
YyBiL21tL21pZ3JhdGUuYwppbmRleCAyZGI0OTc0MTc4ZTZhLi5hYWJjNzM2ZWVjMDIyIDEwMDY0
NAotLS0gYS9tbS9taWdyYXRlLmMKKysrIGIvbW0vbWlncmF0ZS5jCkBAIC0xMTY2LDcgKzExNjYs
NyBAQCBzdGF0aWMgdm9pZCBtaWdyYXRlX2ZvbGlvX2RvbmUoc3RydWN0IGZvbGlvICpzcmMsCiAg
c3RhdGljIGludCBtaWdyYXRlX2ZvbGlvX3VubWFwKG5ld19mb2xpb190IGdldF9uZXdfZm9saW8s
CiAgCQlmcmVlX2ZvbGlvX3QgcHV0X25ld19mb2xpbywgdW5zaWduZWQgbG9uZyBwcml2YXRlLAog
IAkJc3RydWN0IGZvbGlvICpzcmMsIHN0cnVjdCBmb2xpbyAqKmRzdHAsIGVudW0gbWlncmF0ZV9t
b2RlIG1vZGUsCi0JCWVudW0gbWlncmF0ZV9yZWFzb24gcmVhc29uLCBzdHJ1Y3QgbGlzdF9oZWFk
ICpyZXQpCisJCXN0cnVjdCBsaXN0X2hlYWQgKnJldCkKICB7CiAgCXN0cnVjdCBmb2xpbyAqZHN0
OwogIAlpbnQgcmMgPSAtRUFHQUlOOwpAQCAtMTg1Miw4ICsxODUyLDcgQEAgc3RhdGljIGludCBt
aWdyYXRlX3BhZ2VzX2JhdGNoKHN0cnVjdCBsaXN0X2hlYWQgKmZyb20sCiAgCQkJfQogIAogIAkJ
CXJjID0gbWlncmF0ZV9mb2xpb191bm1hcChnZXRfbmV3X2ZvbGlvLCBwdXRfbmV3X2ZvbGlvLAot
CQkJCQlwcml2YXRlLCBmb2xpbywgJmRzdCwgbW9kZSwgcmVhc29uLAotCQkJCQlyZXRfZm9saW9z
KTsKKwkJCQkJcHJpdmF0ZSwgZm9saW8sICZkc3QsIG1vZGUsIHJldF9mb2xpb3MpOwogIAkJCS8q
CiAgCQkJICogVGhlIHJ1bGVzIGFyZToKICAJCQkgKgkwOiBmb2xpbyB3aWxsIGJlIHB1dCBvbiB1
bm1hcF9mb2xpb3MgbGlzdCwKLS0gCjIuNTAuMQoKCi0tIApDaGVlcnMKCkRhdmlkIC8gZGhpbGRl
bmIKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSmZz
LWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdl
Lm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9qZnMtZGlz
Y3Vzc2lvbgo=
