Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EC424FAA07
	for <lists+jfs-discussion@lfdr.de>; Sat,  9 Apr 2022 20:00:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ndFNJ-0002Cw-20; Sat, 09 Apr 2022 17:59:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <christoph.boehmwalder@linbit.com>)
 id 1nd6fp-00088R-G7
 for jfs-discussion@lists.sourceforge.net; Sat, 09 Apr 2022 08:42:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ga61vN/TMGQoWv5pdVva9yHEVEk7JvDu8SvkqTkiHOU=; b=k1bfFhcCLa5NBAPLgZIm1hj0bO
 CdzERhqE/Ggolvbwq1OWRR3yVtKu0+wtP9RW8yYPeagnmJH46jeckR0lx4mLeNqLYi3A0dVurKsh2
 pjttf+7rbd7YAPx1JlovfaGe4p38X+eg7NawRRn2dsQO0LGgVsSzydAtiLkQdvbOaWNY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ga61vN/TMGQoWv5pdVva9yHEVEk7JvDu8SvkqTkiHOU=; b=K9YGSwsuXCrD+I7h+yyVMu6djc
 7YO3zb2O+pbZo9SN9seqBjirOyW9Xbadwq0v/XHLnd+SntXwYDax5RnPZybFuqQG8TtwAHNno1S8T
 5UPYY/8YJLb9ks9znk4da150Jq6E0pAQoEe61oHLpuZ70pZv8O+j4xhv3Oft5B8yeYRY=;
Received: from mail-ej1-f46.google.com ([209.85.218.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nd6fj-00082E-7J
 for jfs-discussion@lists.sourceforge.net; Sat, 09 Apr 2022 08:42:24 +0000
Received: by mail-ej1-f46.google.com with SMTP id bg10so21498592ejb.4
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 09 Apr 2022 01:42:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linbit-com.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=Ga61vN/TMGQoWv5pdVva9yHEVEk7JvDu8SvkqTkiHOU=;
 b=16VWXfTcecI6vKD89hlxEi4M1sM+lDWraPFKcdJek4zYvKgcUI+UTTfswq4WTG3pUA
 DwGdvejVPHmGbB6WxyxpG5RxCDgxrI8ELqeSKx9xnWZSuDqFsfTR7C0q23UBJ4NTUUke
 9rs/lGq9PScZMcSAS9SHkk+s8lIoFrVgzxTJ9NRLUES2XsBvbZXGJskPHSy0jdzHruaB
 iGqoe9YksSt5XleGcAhaVmv2OHki/8AO1/zdgDuyMqAmL6dyveVZDyPGB/rY+7+4UaaK
 b7o7nIN/SrEk1fy76OtZuySau99YX+Sryl6fYO8t+jUUvribl7KiF9nqytVWelfdH+Mk
 O4fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=Ga61vN/TMGQoWv5pdVva9yHEVEk7JvDu8SvkqTkiHOU=;
 b=REsMiSfff9sH+4kEFy5MQDexmCjtQxhqiauB407aJSGwjb4nOQLkHTwG8S6XFA0DwD
 m27Eew9mB5QtW88sq1BPjBYg2bDHvnMWvLKBlhaXtkJIasBF/RN52n1L8dwji1I9awJJ
 fDjvjNZexJOU1uewDzBS3B5yZaGr1dsMB0+s267pfUrOn8fBGlHrQQ+nzarlVWh0TVgz
 UzMN66AbjrEg/CTdpE3cKk3tFgmEFJhhgiYnTSD71G0uSGJH/o2xzq3MkuHG7ueJIYnI
 VIFWe7l3mhUw2PGF6O/UNMX7DIfzm7AVeKHi1+8tGSjOFtyveSKtEFrhlioOnW83ylzF
 cD5w==
X-Gm-Message-State: AOAM532LtguCxPCRR0nsf0PfZXT7qPcZPFKiLdVt9ZcwASbKbPvQwFAx
 UOMS404S4R4NUYWP7boHzFe0uwTFHm/Ujlb3pd0=
X-Google-Smtp-Source: ABdhPJyMl7hUdRWB67QUv24ZWK8mJRwBaxhnGq09ejE28bU5zjvkHivlidIC/JIf/EdWqVvIZNI6nA==
X-Received: by 2002:adf:9581:0:b0:1ed:c341:4ed1 with SMTP id
 p1-20020adf9581000000b001edc3414ed1mr16998132wrp.299.1649492221449; 
 Sat, 09 Apr 2022 01:17:01 -0700 (PDT)
Received: from [192.168.169.127] (178.115.52.210.wireless.dyn.drei.com.
 [178.115.52.210]) by smtp.gmail.com with ESMTPSA id
 r14-20020a05600c35ce00b0038c9f469979sm12169802wmq.40.2022.04.09.01.16.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 09 Apr 2022 01:17:01 -0700 (PDT)
Message-ID: <5a26cdb1-b63b-8d35-640b-bc0e0f78a181@linbit.com>
Date: Sat, 9 Apr 2022 10:16:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Content-Language: en-US
To: Christoph Hellwig <hch@lst.de>
References: <20220409045043.23593-1-hch@lst.de>
 <20220409045043.23593-5-hch@lst.de>
From: =?UTF-8?Q?Christoph_B=c3=b6hmwalder?= <christoph.boehmwalder@linbit.com>
In-Reply-To: <20220409045043.23593-5-hch@lst.de>
X-Spam-Score: -2.0 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 09.04.22 06:50,
 Christoph Hellwig wrote: > Fold each branch
 into its only caller. > > Signed-off-by: Christoph Hellwig <hch@lst.de> >
 --- > drivers/block/drbd/drbd_main.c | 47 +++++++++++++++------ [...] 
 Content analysis details:   (-2.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.46 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.218.46 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nd6fj-00082E-7J
X-Mailman-Approved-At: Sat, 09 Apr 2022 17:59:49 +0000
Subject: Re: [Jfs-discussion] [Drbd-dev] [PATCH 04/27] drbd: remove
 assign_p_sizes_qlim
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
Cc: jfs-discussion@lists.sourceforge.net, linux-nvme@lists.infradead.org,
 virtualization@lists.linux-foundation.org, linux-mm@kvack.org,
 dm-devel@redhat.com, target-devel@vger.kernel.org,
 linux-mtd@lists.infradead.org, drbd-dev@lists.linbit.com,
 linux-s390@vger.kernel.org, linux-nilfs@vger.kernel.org,
 linux-scsi@vger.kernel.org, cluster-devel@redhat.com,
 xen-devel@lists.xenproject.org, linux-ext4@vger.kernel.org,
 linux-um@lists.infradead.org, nbd@other.debian.org, linux-raid@vger.kernel.org,
 linux-bcache@vger.kernel.org, ceph-devel@vger.kernel.org,
 Jens Axboe <axboe@kernel.dk>, linux-block@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-xfs@vger.kernel.org, linux-btrfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, ntfs3@lists.linux.dev,
 ocfs2-devel@oss.oracle.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gMDkuMDQuMjIgMDY6NTAsIENocmlzdG9waCBIZWxsd2lnIHdyb3RlOgo+IEZvbGQgZWFjaCBi
cmFuY2ggaW50byBpdHMgb25seSBjYWxsZXIuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0b3Bo
IEhlbGx3aWcgPGhjaEBsc3QuZGU+Cj4gLS0tCj4gICBkcml2ZXJzL2Jsb2NrL2RyYmQvZHJiZF9t
YWluLmMgfCA0NyArKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tCj4gICAxIGZpbGUg
Y2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygrKSwgMjcgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvYmxvY2svZHJiZC9kcmJkX21haW4uYyBiL2RyaXZlcnMvYmxvY2svZHJiZC9k
cmJkX21haW4uYwo+IGluZGV4IDk2NzZhMWQyMTRiYzUuLjEyNjJmZTFjMzM2MTggMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9ibG9jay9kcmJkL2RyYmRfbWFpbi5jCj4gKysrIGIvZHJpdmVycy9ibG9j
ay9kcmJkL2RyYmRfbWFpbi5jCj4gQEAgLTkwMywzMSArOTAzLDYgQEAgdm9pZCBkcmJkX2dlbl9h
bmRfc2VuZF9zeW5jX3V1aWQoc3RydWN0IGRyYmRfcGVlcl9kZXZpY2UgKnBlZXJfZGV2aWNlKQo+
ICAgCX0KPiAgIH0KPiAgIAo+IC0vKiBjb21tdW5pY2F0ZWQgaWYgKGFncmVlZF9mZWF0dXJlcyAm
IERSQkRfRkZfV1NBTUUpICovCj4gLXN0YXRpYyB2b2lkCj4gLWFzc2lnbl9wX3NpemVzX3FsaW0o
c3RydWN0IGRyYmRfZGV2aWNlICpkZXZpY2UsIHN0cnVjdCBwX3NpemVzICpwLAo+IC0JCQkJCXN0
cnVjdCByZXF1ZXN0X3F1ZXVlICpxKQo+IC17Cj4gLQlpZiAocSkgewo+IC0JCXAtPnFsaW0tPnBo
eXNpY2FsX2Jsb2NrX3NpemUgPSBjcHVfdG9fYmUzMihxdWV1ZV9waHlzaWNhbF9ibG9ja19zaXpl
KHEpKTsKPiAtCQlwLT5xbGltLT5sb2dpY2FsX2Jsb2NrX3NpemUgPSBjcHVfdG9fYmUzMihxdWV1
ZV9sb2dpY2FsX2Jsb2NrX3NpemUocSkpOwo+IC0JCXAtPnFsaW0tPmFsaWdubWVudF9vZmZzZXQg
PSBjcHVfdG9fYmUzMihxdWV1ZV9hbGlnbm1lbnRfb2Zmc2V0KHEpKTsKPiAtCQlwLT5xbGltLT5p
b19taW4gPSBjcHVfdG9fYmUzMihxdWV1ZV9pb19taW4ocSkpOwo+IC0JCXAtPnFsaW0tPmlvX29w
dCA9IGNwdV90b19iZTMyKHF1ZXVlX2lvX29wdChxKSk7Cj4gLQkJcC0+cWxpbS0+ZGlzY2FyZF9l
bmFibGVkID0gYmxrX3F1ZXVlX2Rpc2NhcmQocSk7Cj4gLQkJcC0+cWxpbS0+d3JpdGVfc2FtZV9j
YXBhYmxlID0gMDsKPiAtCX0gZWxzZSB7Cj4gLQkJcSA9IGRldmljZS0+cnFfcXVldWU7Cj4gLQkJ
cC0+cWxpbS0+cGh5c2ljYWxfYmxvY2tfc2l6ZSA9IGNwdV90b19iZTMyKHF1ZXVlX3BoeXNpY2Fs
X2Jsb2NrX3NpemUocSkpOwo+IC0JCXAtPnFsaW0tPmxvZ2ljYWxfYmxvY2tfc2l6ZSA9IGNwdV90
b19iZTMyKHF1ZXVlX2xvZ2ljYWxfYmxvY2tfc2l6ZShxKSk7Cj4gLQkJcC0+cWxpbS0+YWxpZ25t
ZW50X29mZnNldCA9IDA7Cj4gLQkJcC0+cWxpbS0+aW9fbWluID0gY3B1X3RvX2JlMzIocXVldWVf
aW9fbWluKHEpKTsKPiAtCQlwLT5xbGltLT5pb19vcHQgPSBjcHVfdG9fYmUzMihxdWV1ZV9pb19v
cHQocSkpOwo+IC0JCXAtPnFsaW0tPmRpc2NhcmRfZW5hYmxlZCA9IDA7Cj4gLQkJcC0+cWxpbS0+
d3JpdGVfc2FtZV9jYXBhYmxlID0gMDsKPiAtCX0KPiAtfQo+IC0KPiAgIGludCBkcmJkX3NlbmRf
c2l6ZXMoc3RydWN0IGRyYmRfcGVlcl9kZXZpY2UgKnBlZXJfZGV2aWNlLCBpbnQgdHJpZ2dlcl9y
ZXBseSwgZW51bSBkZHNfZmxhZ3MgZmxhZ3MpCj4gICB7Cj4gICAJc3RydWN0IGRyYmRfZGV2aWNl
ICpkZXZpY2UgPSBwZWVyX2RldmljZS0+ZGV2aWNlOwo+IEBAIC05NTcsMTQgKzkzMiwzMiBAQCBp
bnQgZHJiZF9zZW5kX3NpemVzKHN0cnVjdCBkcmJkX3BlZXJfZGV2aWNlICpwZWVyX2RldmljZSwg
aW50IHRyaWdnZXJfcmVwbHksIGVudQo+ICAgCQlxX29yZGVyX3R5cGUgPSBkcmJkX3F1ZXVlX29y
ZGVyX3R5cGUoZGV2aWNlKTsKPiAgIAkJbWF4X2Jpb19zaXplID0gcXVldWVfbWF4X2h3X3NlY3Rv
cnMocSkgPDwgOTsKPiAgIAkJbWF4X2Jpb19zaXplID0gbWluKG1heF9iaW9fc2l6ZSwgRFJCRF9N
QVhfQklPX1NJWkUpOwo+IC0JCWFzc2lnbl9wX3NpemVzX3FsaW0oZGV2aWNlLCBwLCBxKTsKPiAr
CQlwLT5xbGltLT5waHlzaWNhbF9ibG9ja19zaXplID0KPiArCQkJY3B1X3RvX2JlMzIocXVldWVf
cGh5c2ljYWxfYmxvY2tfc2l6ZShxKSk7Cj4gKwkJcC0+cWxpbS0+bG9naWNhbF9ibG9ja19zaXpl
ID0KPiArCQkJY3B1X3RvX2JlMzIocXVldWVfbG9naWNhbF9ibG9ja19zaXplKHEpKTsKPiArCQlw
LT5xbGltLT5hbGlnbm1lbnRfb2Zmc2V0ID0KPiArCQkJY3B1X3RvX2JlMzIocXVldWVfYWxpZ25t
ZW50X29mZnNldChxKSk7Cj4gKwkJcC0+cWxpbS0+aW9fbWluID0gY3B1X3RvX2JlMzIocXVldWVf
aW9fbWluKHEpKTsKPiArCQlwLT5xbGltLT5pb19vcHQgPSBjcHVfdG9fYmUzMihxdWV1ZV9pb19v
cHQocSkpOwo+ICsJCXAtPnFsaW0tPmRpc2NhcmRfZW5hYmxlZCA9IGJsa19xdWV1ZV9kaXNjYXJk
KHEpOwo+ICAgCQlwdXRfbGRldihkZXZpY2UpOwo+ICAgCX0gZWxzZSB7Cj4gKwkJc3RydWN0IHJl
cXVlc3RfcXVldWUgKnEgPSBkZXZpY2UtPnJxX3F1ZXVlOwo+ICsKPiArCQlwLT5xbGltLT5waHlz
aWNhbF9ibG9ja19zaXplID0KPiArCQkJY3B1X3RvX2JlMzIocXVldWVfcGh5c2ljYWxfYmxvY2tf
c2l6ZShxKSk7Cj4gKwkJcC0+cWxpbS0+bG9naWNhbF9ibG9ja19zaXplID0KPiArCQkJY3B1X3Rv
X2JlMzIocXVldWVfbG9naWNhbF9ibG9ja19zaXplKHEpKTsKPiArCQlwLT5xbGltLT5hbGlnbm1l
bnRfb2Zmc2V0ID0gMDsKPiArCQlwLT5xbGltLT5pb19taW4gPSBjcHVfdG9fYmUzMihxdWV1ZV9p
b19taW4ocSkpOwo+ICsJCXAtPnFsaW0tPmlvX29wdCA9IGNwdV90b19iZTMyKHF1ZXVlX2lvX29w
dChxKSk7Cj4gKwkJcC0+cWxpbS0+ZGlzY2FyZF9lbmFibGVkID0gMDsKPiArCj4gICAJCWRfc2l6
ZSA9IDA7Cj4gICAJCXVfc2l6ZSA9IDA7Cj4gICAJCXFfb3JkZXJfdHlwZSA9IFFVRVVFX09SREVS
RURfTk9ORTsKPiAgIAkJbWF4X2Jpb19zaXplID0gRFJCRF9NQVhfQklPX1NJWkU7IC8qIC4uLiBt
dWx0aXBsZSBCSU9zIHBlciBwZWVyX3JlcXVlc3QgKi8KPiAtCQlhc3NpZ25fcF9zaXplc19xbGlt
KGRldmljZSwgcCwgTlVMTCk7Cj4gICAJfQo+ICAgCj4gICAJaWYgKHBlZXJfZGV2aWNlLT5jb25u
ZWN0aW9uLT5hZ3JlZWRfcHJvX3ZlcnNpb24gPD0gOTQpCgpMR1RNIG5vdywgdGhhbmtzLgoKQWNr
ZWQtYnk6IENocmlzdG9waCBCw7ZobXdhbGRlciA8Y2hyaXN0b3BoLmJvZWhtd2FsZGVyQGxpbmJp
dC5jb20+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SmZzLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZv
cmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9qZnMt
ZGlzY3Vzc2lvbgo=
