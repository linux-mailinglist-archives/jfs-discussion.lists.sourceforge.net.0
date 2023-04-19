Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F0526E7E15
	for <lists+jfs-discussion@lfdr.de>; Wed, 19 Apr 2023 17:20:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pp9bF-00049Q-Ge;
	Wed, 19 Apr 2023 15:20:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <agruenba@redhat.com>) id 1pp9bE-000497-Az
 for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Apr 2023 15:20:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Tk4ILYUitykXDNv2nAhy0f5ydU+4a31pQqGhvmwhdPk=; b=lYqxPB1Dl8f+fQaKpO4aE+bqqj
 5bpZxD+wbMbTy9TkfVq+RvARD/JDXeEbE3Nt5eP4QuZgyEXQaHbxac04zUtM31Nl47OfyCah+iJXV
 XsbmuObxQHLBOVmzDoOJ/Oy1CtinPKWZ9x75qTTQW8EOEzIn2sN+5bd7iJvQNEjowGi8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Tk4ILYUitykXDNv2nAhy0f5ydU+4a31pQqGhvmwhdPk=; b=lE8jITeRVtW9ExKFzWF4xEffBe
 EKlLHCJFi7tog9DmQuFi4qG53VzGpXg1GJsWmNbaNiGVfw8XXAhrrPyJWpxmyBPXsAkEW1guAFstR
 zSslOpGCjmHwFRMh2qLoEYbFmwo0SoE5GvoywevI7ieW+/5sE2LGpA5zk0E4xdb+A6fM=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pp9b9-0005HE-9i for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Apr 2023 15:20:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1681917588;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Tk4ILYUitykXDNv2nAhy0f5ydU+4a31pQqGhvmwhdPk=;
 b=g3HzbW79O8w/EvzesLgK3105xNy1N7VivvutR/rkCVyhDYQfTNNjuvYLqUq/YbZVTzc24D
 c8ttJtdF/cGVcGJGRJfPmK8/TBuq4MJ9cmem40NneTjX14w9yHNKKbDA3hG19kB7VSQKIc
 IosFtp3hF4TMEjtRxx6KI6O64W1jnSA=
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com
 [209.85.216.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-644-DORMTmw0PNifM050kw_32w-1; Wed, 19 Apr 2023 11:19:45 -0400
X-MC-Unique: DORMTmw0PNifM050kw_32w-1
Received: by mail-pj1-f71.google.com with SMTP id
 98e67ed59e1d1-24736ac595aso2404875a91.1
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 19 Apr 2023 08:19:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681917584; x=1684509584;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Tk4ILYUitykXDNv2nAhy0f5ydU+4a31pQqGhvmwhdPk=;
 b=FSmNFb2n6hrAbBBr3Mm6DFTkrtLX5DNUQiMBb0+Wtf1cGRVo5WIEg2podhNkBTu8Ox
 ER2zWLSk2oDsJAFC2SHs9edk0nlv5u/ixMLS21oOCyxCm75Hv3/Q8K/Ly4uVf4yaNZiv
 FcEIsy/XbK5uKh02ojAQBVXtsi8/C6OwCFPzCUBegUDVYAA15IVmh7NYTroGsKXAFfXr
 uIT1H7En4RXJyhmMn68kAk3AK4rUtMaAXIK1efyvTjclU/tOqklqrnGNslFXAnD5Pl1h
 rSW/J+AYFOSYNXylkJMSpR2VokN7mq9QEWziFanne0N0FSgSIBE6rd8khIWvJeeDwqTy
 u+UQ==
X-Gm-Message-State: AAQBX9cEwQOvV56Y8rcJ7FuG05z8aN4JE/OwvkSlMs1FfPU4UFWX2qM6
 pMB5lJ6KmtlOaogdEx8CsBo+s78izymkyv5N1vCgrSK4DEzexnbwbgJWTX7fIaaEmX1xXRwfOl3
 zGBhCPyMsA5LosUtVckdv8RIF48xfSTRqiqPJEoNKgOKWwOIV8Fk=
X-Received: by 2002:a17:90a:2ca4:b0:247:fec:3cf with SMTP id
 n33-20020a17090a2ca400b002470fec03cfmr1032462pjd.9.1681917584663; 
 Wed, 19 Apr 2023 08:19:44 -0700 (PDT)
X-Google-Smtp-Source: AKy350ZilzTP35l+fCVfSRmyAr7TA2z2HByJ2c77EoLXxjUVlBIE5WaJ/vbFqG27YJf1gGuB7p5La9B7yskBhiQ6yjg=
X-Received: by 2002:a17:90a:2ca4:b0:247:fec:3cf with SMTP id
 n33-20020a17090a2ca400b002470fec03cfmr1032449pjd.9.1681917584368; Wed, 19 Apr
 2023 08:19:44 -0700 (PDT)
MIME-Version: 1.0
References: <20230419140929.5924-1-jth@kernel.org>
 <20230419140929.5924-12-jth@kernel.org>
In-Reply-To: <20230419140929.5924-12-jth@kernel.org>
From: Andreas Gruenbacher <agruenba@redhat.com>
Date: Wed, 19 Apr 2023 17:19:31 +0200
Message-ID: <CAHc6FU6U1yZguZGeCc7BUqd1Qm4+SSRK8xbNZWBUSXTk_jjvVQ@mail.gmail.com>
To: Johannes Thumshirn <jth@kernel.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, Apr 19, 2023 at 4:10 PM Johannes Thumshirn <jth@kernel.org>
    wrote: > > From: Johannes Thumshirn <johannes.thumshirn@wdc.com> > > The
   GFS superblock reading code uses bio_add_page() to add a [...] 
 
 Content analysis details:   (-0.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [170.10.133.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [170.10.133.124 listed in wl.mailspike.net]
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
X-Headers-End: 1pp9b9-0005HE-9i
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gV2VkLCBBcHIgMTksIDIwMjMgYXQgNDoxMOKAr1BNIEpvaGFubmVzIFRodW1zaGlybiA8anRo
QGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gRnJvbTogSm9oYW5uZXMgVGh1bXNoaXJuIDxqb2hhbm5l
cy50aHVtc2hpcm5Ad2RjLmNvbT4KPgo+IFRoZSBHRlMgc3VwZXJibG9jayByZWFkaW5nIGNvZGUg
dXNlcyBiaW9fYWRkX3BhZ2UoKSB0byBhZGQgYSBwYWdlIHRvIGEKPiBuZXdseSBjcmVhdGVkIGJp
by4gYmlvX2FkZF9wYWdlKCkgY2FuIGZhaWwsIGJ1dCB0aGUgcmV0dXJuIHZhbHVlIGlzIG5ldmVy
Cj4gY2hlY2tlZC4KCkl0J3MgR0ZTMiwgbm90IEdGUywgYnV0IG90aGVyd2lzZSB0aGlzIGlzIG9i
dmlvdXNseSBmaW5lLCB0aGFua3MuCgo+IFVzZSBfX2Jpb19hZGRfcGFnZSgpIGFzIGFkZGluZyBh
IHNpbmdsZSBwYWdlIHRvIGEgbmV3bHkgY3JlYXRlZCBiaW8gaXMKPiBndWFyYW50ZWVkIHRvIHN1
Y2NlZWQuCj4KPiBUaGlzIGJyaW5ncyB1cyBhIHN0ZXAgY2xvc2VyIHRvIG1hcmtpbmcgYmlvX2Fk
ZF9wYWdlKCkgYXMgX19tdXN0X2NoZWNrLgo+Cj4gU2lnbmVkLW9mZi1ieTogSm9oYW5uZXMgVGh1
bXNoaXJuIDxqb2hhbm5lcy50aHVtc2hpcm5Ad2RjLmNvbT4KPiBSZXZpZXdlZC1ieTogRGFtaWVu
IExlIE1vYWwgPGRhbWllbi5sZW1vYWxAb3BlbnNvdXJjZS53ZGMuY29tPgoKUmV2aWV3ZWQtYnk6
IEFuZHJlYXMgR3J1ZW5iYWNoZXIgPGFncnVlbmJhQHJlZGhhdC5jb20+Cgo+IC0tLQo+ICBmcy9n
ZnMyL29wc19mc3R5cGUuYyB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
LCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZnMvZ2ZzMi9vcHNfZnN0eXBlLmMgYi9m
cy9nZnMyL29wc19mc3R5cGUuYwo+IGluZGV4IDZkZTkwMWMzYjg5Yi4uZTBjZDBkNDNiMTJmIDEw
MDY0NAo+IC0tLSBhL2ZzL2dmczIvb3BzX2ZzdHlwZS5jCj4gKysrIGIvZnMvZ2ZzMi9vcHNfZnN0
eXBlLmMKPiBAQCAtMjU0LDcgKzI1NCw3IEBAIHN0YXRpYyBpbnQgZ2ZzMl9yZWFkX3N1cGVyKHN0
cnVjdCBnZnMyX3NiZCAqc2RwLCBzZWN0b3JfdCBzZWN0b3IsIGludCBzaWxlbnQpCj4KPiAgICAg
ICAgIGJpbyA9IGJpb19hbGxvYyhzYi0+c19iZGV2LCAxLCBSRVFfT1BfUkVBRCB8IFJFUV9NRVRB
LCBHRlBfTk9GUyk7Cj4gICAgICAgICBiaW8tPmJpX2l0ZXIuYmlfc2VjdG9yID0gc2VjdG9yICog
KHNiLT5zX2Jsb2Nrc2l6ZSA+PiA5KTsKPiAtICAgICAgIGJpb19hZGRfcGFnZShiaW8sIHBhZ2Us
IFBBR0VfU0laRSwgMCk7Cj4gKyAgICAgICBfX2Jpb19hZGRfcGFnZShiaW8sIHBhZ2UsIFBBR0Vf
U0laRSwgMCk7Cj4KPiAgICAgICAgIGJpby0+YmlfZW5kX2lvID0gZW5kX2Jpb19pb19wYWdlOwo+
ICAgICAgICAgYmlvLT5iaV9wcml2YXRlID0gcGFnZTsKPiAtLQo+IDIuMzkuMgo+CgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkpmcy1kaXNjdXNzaW9u
IG1haWxpbmcgbGlzdApKZnMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6
Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vamZzLWRpc2N1c3Npb24K
