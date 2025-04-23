Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A0A1BA980AD
	for <lists+jfs-discussion@lfdr.de>; Wed, 23 Apr 2025 09:26:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1u7UUN-0007Pr-AB;
	Wed, 23 Apr 2025 07:25:47 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <david@redhat.com>) id 1u7UUK-0007Pi-2E
 for jfs-discussion@lists.sourceforge.net;
 Wed, 23 Apr 2025 07:25:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Cc:To:From:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=H9oblxL5TFk3MzBoB5qC6ZXg151NO2zDTMpCh9STN7A=; b=fBQ5v7+dPslXmpzfAHM6jWQWOQ
 a7mUUKQtDK7GlvueGOh4WD+ONxPPRwqW2NZfJ7wdlxvD+ptwxRTWb3nWZdrEzYfxkLHsDb7aIgwMA
 Gr9CsiGv5V1qDxpfzZNBfmqLuZFq8eFxXvPmqb3GFouhsnnlXYqZhF86K1EidfAg3+K4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Cc:To:From:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=H9oblxL5TFk3MzBoB5qC6ZXg151NO2zDTMpCh9STN7A=; b=IhPkUlQBxzyVWynw8xHyistjTs
 rCrsdzfz/QfzgxeC5zaUMdX0qzP5zj9m4n0WATAuMn2kqaQ4WUZD3b/vemLme2Bvk/76L/UV0DdRK
 ZuzbYozMMO8J1xNwOr3p6fZC/r8+N/w5YuWF/um4J3qhEzDF7DwvNZjZjSQ3GigRggHI=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1u7UU4-0005L4-Ob for jfs-discussion@lists.sourceforge.net;
 Wed, 23 Apr 2025 07:25:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1745393112;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=H9oblxL5TFk3MzBoB5qC6ZXg151NO2zDTMpCh9STN7A=;
 b=EuSA6l4F84hRxnawpcAysC1v7Aze6UcUHOpVsddqWTIS1BKiSLzj8R7q5Izi6Zi2QJajbZ
 6TlMDj465rqnlFOHZhwASTPQZOi+HuaOrOGPmPjrpckduLbacVF6Khw+Yol7lkb4gyBu5n
 wtV3uKnBDYsMLA85AZcFUbY/o53D/LI=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-538-A-4TrhO7OeO09UlTSUAkPw-1; Wed, 23 Apr 2025 03:25:08 -0400
X-MC-Unique: A-4TrhO7OeO09UlTSUAkPw-1
X-Mimecast-MFC-AGG-ID: A-4TrhO7OeO09UlTSUAkPw_1745393108
Received: by mail-wr1-f69.google.com with SMTP id
 ffacd0b85a97d-39c1b1c0969so3535622f8f.1
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 23 Apr 2025 00:25:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745393107; x=1745997907;
 h=content-transfer-encoding:in-reply-to:organization:autocrypt
 :content-language:references:cc:to:from:subject:user-agent
 :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
 :date:message-id:reply-to;
 bh=H9oblxL5TFk3MzBoB5qC6ZXg151NO2zDTMpCh9STN7A=;
 b=v6qcmArK98yk/N2ZBbNv1EPdrAi4Tl6z2hsexjiN4n6xq4H6fVt4Y72DSbNCYZftdb
 dlbmkO/IA68ae2cgNyKE1TRXLCZwGe7eAJQhWueVJXdtlHWXNHlEFGBNrrhMq3mh/cPB
 KF8g56s0aLrEvk5fsqA/kPVipQhi0NIqFcLEaXTVOW3yd+//FsihQbI7e5p2x4wAFFnR
 Qb6DWSXRfh8Gj2RZ1fj4Hvqz031GPtHLEz+EdEto0HnmQVFNAqGLHfHv3wdpLe929X40
 bRoQqpXtvXVIFUt1ehkfpARghn5TJWRREboQzEHV+L4J+J/2m5hxoMcyDfu6USEm2C55
 fu3w==
X-Forwarded-Encrypted: i=1;
 AJvYcCVn2zeFA0R6yorNFIn1QeKTfJnrB+vola39mtyCJCo2dO+cIHCX8FD+OGH+qceOprebEvaNVF71iwiMLBEQ5Q==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyDEhV4aiy+hcVLCUVa2o/ahe+SKff4k36UorfDIB9VraZv0+PW
 sd/7ZyHdIdIn3/9bi4QTHacYkKjtCgE+956ZCLzQVvMg7da0GvMnyvqLRyFeXpbYT1vN8mAsfzI
 Ox5qFCl/kC/gwzBkpcn+prmMigsXVWVQtIM8rktyjhC9ELw8WfeLed4vEm2Q2r2HfKDVRJBJv
X-Gm-Gg: ASbGnctmZyrfZEAZ/yffE846U51Mp6nwXThJmD0cJSZI+u47ONWqj7C9+azpCmwMtoh
 gkOYLXMMEWJ+fljYUsyhi1lXOF/aqLYVq9lRRZx92z0uwutywtkRFO7P030JWy+4rIvI0CEPvGB
 4JYdjqJfjMIhP8hzFavMoYC2zs1PZTT3n8Ufyu5icSFl/AgOwm38sAywZ/nzg7uTxYuS4hrMEBY
 eJjD2rdCX8JbN+bKK0BgZ9cHOFJo8osLDH+rKDGQE0xAvzgBKOqefcC3aw2xbohU0iF2prNSwWn
 y0WLoLF+JktLq0nzfzwH77x9Ilpd7/PU6yolOad5XrjDrBeSLa2U5IFBtZTwHISU6ozjFxCdveU
 BPW/EKnRajJGLM7maqIPc8sNzximn4pd8/GNPVuA=
X-Received: by 2002:a05:6000:4012:b0:399:6dd9:9f40 with SMTP id
 ffacd0b85a97d-39efba385acmr15017846f8f.9.1745393107714; 
 Wed, 23 Apr 2025 00:25:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG74s8pPqbYZHsSrh21SVIY8YNHPjcZYCwN0STxCwH4JIuShxilAUosxVBeO42YGvriqyfMHg==
X-Received: by 2002:a05:6000:4012:b0:399:6dd9:9f40 with SMTP id
 ffacd0b85a97d-39efba385acmr15017821f8f.9.1745393107332; 
 Wed, 23 Apr 2025 00:25:07 -0700 (PDT)
Received: from ?IPV6:2003:cb:c740:2c00:d977:12ba:dad2:a87f?
 (p200300cbc7402c00d97712badad2a87f.dip0.t-ipconnect.de.
 [2003:cb:c740:2c00:d977:12ba:dad2:a87f])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-39efa49313asm17747612f8f.75.2025.04.23.00.25.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 23 Apr 2025 00:25:06 -0700 (PDT)
Message-ID: <8f24de4d-5088-498a-968d-9e8bb85201ac@redhat.com>
Date: Wed, 23 Apr 2025 09:25:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Matthew Wilcox <willy@infradead.org>,
 Andrew Morton <akpm@linux-foundation.org>
References: <20250422114000.15003-1-shivankg@amd.com>
 <20250422114000.15003-2-shivankg@amd.com>
 <20250422164111.f5d3f0756ad94d012180ece5@linux-foundation.org>
 <aAg1-hZ0a-44WW6b@casper.infradead.org>
 <b84b6c31-578f-4abe-9b06-6e7cf4882eb3@redhat.com>
Autocrypt: addr=david@redhat.com; keydata=
 xsFNBFXLn5EBEAC+zYvAFJxCBY9Tr1xZgcESmxVNI/0ffzE/ZQOiHJl6mGkmA1R7/uUpiCjJ
 dBrn+lhhOYjjNefFQou6478faXE6o2AhmebqT4KiQoUQFV4R7y1KMEKoSyy8hQaK1umALTdL
 QZLQMzNE74ap+GDK0wnacPQFpcG1AE9RMq3aeErY5tujekBS32jfC/7AnH7I0v1v1TbbK3Gp
 XNeiN4QroO+5qaSr0ID2sz5jtBLRb15RMre27E1ImpaIv2Jw8NJgW0k/D1RyKCwaTsgRdwuK
 Kx/Y91XuSBdz0uOyU/S8kM1+ag0wvsGlpBVxRR/xw/E8M7TEwuCZQArqqTCmkG6HGcXFT0V9
 PXFNNgV5jXMQRwU0O/ztJIQqsE5LsUomE//bLwzj9IVsaQpKDqW6TAPjcdBDPLHvriq7kGjt
 WhVhdl0qEYB8lkBEU7V2Yb+SYhmhpDrti9Fq1EsmhiHSkxJcGREoMK/63r9WLZYI3+4W2rAc
 UucZa4OT27U5ZISjNg3Ev0rxU5UH2/pT4wJCfxwocmqaRr6UYmrtZmND89X0KigoFD/XSeVv
 jwBRNjPAubK9/k5NoRrYqztM9W6sJqrH8+UWZ1Idd/DdmogJh0gNC0+N42Za9yBRURfIdKSb
 B3JfpUqcWwE7vUaYrHG1nw54pLUoPG6sAA7Mehl3nd4pZUALHwARAQABzSREYXZpZCBIaWxk
 ZW5icmFuZCA8ZGF2aWRAcmVkaGF0LmNvbT7CwZgEEwEIAEICGwMGCwkIBwMCBhUIAgkKCwQW
 AgMBAh4BAheAAhkBFiEEG9nKrXNcTDpGDfzKTd4Q9wD/g1oFAl8Ox4kFCRKpKXgACgkQTd4Q
 9wD/g1oHcA//a6Tj7SBNjFNM1iNhWUo1lxAja0lpSodSnB2g4FCZ4R61SBR4l/psBL73xktp
 rDHrx4aSpwkRP6Epu6mLvhlfjmkRG4OynJ5HG1gfv7RJJfnUdUM1z5kdS8JBrOhMJS2c/gPf
 wv1TGRq2XdMPnfY2o0CxRqpcLkx4vBODvJGl2mQyJF/gPepdDfcT8/PY9BJ7FL6Hrq1gnAo4
 3Iv9qV0JiT2wmZciNyYQhmA1V6dyTRiQ4YAc31zOo2IM+xisPzeSHgw3ONY/XhYvfZ9r7W1l
 pNQdc2G+o4Di9NPFHQQhDw3YTRR1opJaTlRDzxYxzU6ZnUUBghxt9cwUWTpfCktkMZiPSDGd
 KgQBjnweV2jw9UOTxjb4LXqDjmSNkjDdQUOU69jGMUXgihvo4zhYcMX8F5gWdRtMR7DzW/YE
 BgVcyxNkMIXoY1aYj6npHYiNQesQlqjU6azjbH70/SXKM5tNRplgW8TNprMDuntdvV9wNkFs
 9TyM02V5aWxFfI42+aivc4KEw69SE9KXwC7FSf5wXzuTot97N9Phj/Z3+jx443jo2NR34XgF
 89cct7wJMjOF7bBefo0fPPZQuIma0Zym71cP61OP/i11ahNye6HGKfxGCOcs5wW9kRQEk8P9
 M/k2wt3mt/fCQnuP/mWutNPt95w9wSsUyATLmtNrwccz63XOwU0EVcufkQEQAOfX3n0g0fZz
 Bgm/S2zF/kxQKCEKP8ID+Vz8sy2GpDvveBq4H2Y34XWsT1zLJdvqPI4af4ZSMxuerWjXbVWb
 T6d4odQIG0fKx4F8NccDqbgHeZRNajXeeJ3R7gAzvWvQNLz4piHrO/B4tf8svmRBL0ZB5P5A
 2uhdwLU3NZuK22zpNn4is87BPWF8HhY0L5fafgDMOqnf4guJVJPYNPhUFzXUbPqOKOkL8ojk
 CXxkOFHAbjstSK5Ca3fKquY3rdX3DNo+EL7FvAiw1mUtS+5GeYE+RMnDCsVFm/C7kY8c2d0G
 NWkB9pJM5+mnIoFNxy7YBcldYATVeOHoY4LyaUWNnAvFYWp08dHWfZo9WCiJMuTfgtH9tc75
 7QanMVdPt6fDK8UUXIBLQ2TWr/sQKE9xtFuEmoQGlE1l6bGaDnnMLcYu+Asp3kDT0w4zYGsx
 5r6XQVRH4+5N6eHZiaeYtFOujp5n+pjBaQK7wUUjDilPQ5QMzIuCL4YjVoylWiBNknvQWBXS
 lQCWmavOT9sttGQXdPCC5ynI+1ymZC1ORZKANLnRAb0NH/UCzcsstw2TAkFnMEbo9Zu9w7Kv
 AxBQXWeXhJI9XQssfrf4Gusdqx8nPEpfOqCtbbwJMATbHyqLt7/oz/5deGuwxgb65pWIzufa
 N7eop7uh+6bezi+rugUI+w6DABEBAAHCwXwEGAEIACYCGwwWIQQb2cqtc1xMOkYN/MpN3hD3
 AP+DWgUCXw7HsgUJEqkpoQAKCRBN3hD3AP+DWrrpD/4qS3dyVRxDcDHIlmguXjC1Q5tZTwNB
 boaBTPHSy/Nksu0eY7x6HfQJ3xajVH32Ms6t1trDQmPx2iP5+7iDsb7OKAb5eOS8h+BEBDeq
 3ecsQDv0fFJOA9ag5O3LLNk+3x3q7e0uo06XMaY7UHS341ozXUUI7wC7iKfoUTv03iO9El5f
 XpNMx/YrIMduZ2+nd9Di7o5+KIwlb2mAB9sTNHdMrXesX8eBL6T9b+MZJk+mZuPxKNVfEQMQ
 a5SxUEADIPQTPNvBewdeI80yeOCrN+Zzwy/Mrx9EPeu59Y5vSJOx/z6OUImD/GhX7Xvkt3kq
 Er5KTrJz3++B6SH9pum9PuoE/k+nntJkNMmQpR4MCBaV/J9gIOPGodDKnjdng+mXliF3Ptu6
 3oxc2RCyGzTlxyMwuc2U5Q7KtUNTdDe8T0uE+9b8BLMVQDDfJjqY0VVqSUwImzTDLX9S4g/8
 kC4HRcclk8hpyhY2jKGluZO0awwTIMgVEzmTyBphDg/Gx7dZU1Xf8HFuE+UZ5UDHDTnwgv7E
 th6RC9+WrhDNspZ9fJjKWRbveQgUFCpe1sa77LAw+XFrKmBHXp9ZVIe90RMe2tRL06BGiRZr
 jPrnvUsUUsjRoRNJjKKA/REq+sAnhkNPPZ/NNMjaZ5b8Tovi8C0tmxiCHaQYqj7G2rgnT0kt
 WNyWQQ==
Organization: Red Hat
In-Reply-To: <b84b6c31-578f-4abe-9b06-6e7cf4882eb3@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: j-99-Z0wlRalu7EPYHHepR48R22nzla-Dd1Teb3xG7w_1745393108
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 23.04.25 09:22, David Hildenbrand wrote: > On 23.04.25
 02:36, Matthew Wilcox wrote: >> On Tue, Apr 22, 2025 at 04:41:11PM -0700,
 Andrew Morton wrote: >>>> +/** >>>> + * folio_migrate_expected_refs [...] 
 Content analysis details:   (-0.5 points, 6.0 required)
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1u7UU4-0005L4-Ob
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
Cc: Shivank Garg <shivankg@amd.com>, shaggy@kernel.org,
 wangkefeng.wang@huawei.com,
 syzbot+8bb6fd945af4e0ad9299@syzkaller.appspotmail.com, jane.chu@oracle.com,
 apopple@nvidia.com, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, donettom@linux.ibm.com,
 ziy@nvidia.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 23.04.25 09:22, David Hildenbrand wrote:
> On 23.04.25 02:36, Matthew Wilcox wrote:
>> On Tue, Apr 22, 2025 at 04:41:11PM -0700, Andrew Morton wrote:
>>>> +/**
>>>> + * folio_migrate_expected_refs - Count expected references for an unmapped folio.
>>>
>>> "folio_migration_expected_refs"
>>
>> Please run make W=1 fs/jfs/ in order to run kernel-doc on this file.
>> It'll flag this kind of error.
>>
>>> It's concerning that one particular filesystem needs this - one
>>> suspects that it is doing something wrong, or that the present API
>>> offerings were misdesigned.  It would be helpful if the changelogs were
>>> to explain what is special about JFS.
>>
>> It doesn't surprise me at all.  Almost no filesystem implements its own
>> migrate_folio operation.  Without going into too much detail, almost
>> all filesystems can use filemap_migrate_folio(), buffer_migrate_folio()
>> or buffer_migrate_folio_norefs().  So this is not an indication that
>> jfs is doing anything wrong (except maybe it's misdesigned in that the
>> per-folio metadata caches the address of the folio, but changing that
>> seems very much too much work to ask someone to do).
>>
>> What I do wonder is whether we want to have such a specialised
>> function existing.  We have can_split_folio() in huge_memory.c
>> which is somewhat more comprehensive and doesn't require the folio to be
>> unmapped first.
> 
> I was debating with myself whether we should do the usual "refs from
> ->private, refs from page table mappings" .. dance, and look up the
> mapping from the folio instead of passing it in.
> 
> I concluded that for this (migration) purpose the function is good
> enough as it is: if abused in wrong context (e.g., still ->private,
> still page table mappings), it would not fake that there are no
> unexpected references.

Sorry, I forgot that we still care about the reference from ->private 
here. We expect the folio to be unmapped.

-- 
Cheers,

David / dhildenb



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
